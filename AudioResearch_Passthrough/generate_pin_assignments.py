#!/usr/bin/python
"""
Autogenerate a tcl script for setting pin assignments for the Reflex
Arria10 SoC SoM.
"""

import pandas as pd
import numpy as np


##############################################################################
# string constants
##############################################################################
PROC_BEGIN = """post_message \"##################################################################################################\"
post_message \"# Processing assignments file starts.\""""

PROC_END = """post_message \"# Processing assignments file ends.\"
post_message \"##################################################################################################\""""

SET_LOCATION = 'set_location_assignment PIN_{pin_num:4} -to {pin_name:20}'
SET_IO_STANDARD = 'set_instance_assignment -name IO_STANDARD {io_standard:32} -to {pin_name}'

SHORT_COMMENT_LINE = '############################################################'
LONG_COMMENT_LINE = '########################################################################################################################'


##############################################################################
# read in data from csv files
##############################################################################
with open('master_pinout.csv') as infile:
    pinout_data = pd.read_csv(infile)


##############################################################################
# create the tcl script text
##############################################################################
output_text = []

# beginning of file
output_text.append(PROC_BEGIN)
output_text.append('\n\n')

# loop through the major sections
for section in set(pinout_data['section'].values):
    # create major section header
    output_text.append(LONG_COMMENT_LINE)
    output_text.append('# ' + section.upper())
    output_text.append(LONG_COMMENT_LINE)

    # grab the pins belonging to the current section
    section_pins = pinout_data.loc[pinout_data['section'] == section]

    # loop through the minor sections
    for subsection in set(section_pins['subsection'].values):
        # create minor section header (if it exists)
        if subsection is not np.nan:
            output_text.append('')
            output_text.append(SHORT_COMMENT_LINE)
            output_text.append('# ' + subsection.upper())
            output_text.append(SHORT_COMMENT_LINE)

            # grab the pins belonging to the current subsection
            subsection_pins = section_pins.loc[section_pins['subsection'] == subsection]
        else:
            # there is no subsection, so just use the major section
            subsection_pins = section_pins

        # set the pin location
        for index, row in subsection_pins.iterrows():
            if row['use']:
                comment = ''
            else:
                comment = '# '
            output_text.append(comment + SET_LOCATION.format(pin_num=row['Arria10 pin num'],
                pin_name=row['pin name']))

        output_text.append('')

        # set the io standard
        for index, row in subsection_pins.iterrows():
            if row['use']:
                comment = ''
            else:
                comment = '# '
            output_text.append(comment + SET_IO_STANDARD.format(io_standard='"' +
                str(row['io standard']) + '"', pin_name=row['pin name']))

    output_text.append('\n')

# end of file
output_text.append('\n\n')
output_text.append(PROC_END)


##############################################################################
# save the file
##############################################################################
with open('som_a10_pinout.tcl', 'w') as outfile:
    outfile.writelines([line + '\n' for line in output_text])

# for line in output_text:
#     print(line)
