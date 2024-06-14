"""
Created on 11 Apr 2016
Calculating magnetic flux (B) values at a given XYZ position at timesteps end
during transient analysis
Example for the Opera-3d User Guide: Radiation Screen Transient EM Example
Author: AB
"""

import operafea
import numpy as np


# Global variables
xyz = np.float_((0, 0, 0))  # (x, y, z) position of interest
outputfile = "B_at_points.txt"
print_header = True


def onTimeStepEnd():
    # Module/file scope variables must be declared global if changed
    global print_header

    operafea.output("\n --------- Data extraction at end of time step ---------\n")

    ttime = operafea.getSysVar("TTIME")  # Retrieveing Opera system variable TTIME
    simu = operafea.currentSimulation()  # Get the currently active simulation

    # Set flag allowing field output in every time step
    simu.addFlag('COMPUTEDATAPERTIMESTEP', True)

    # Use getFieldsAtCoords to get an opera object containing field info
    elem_ids = np.float_([])  # See documentation
    fields_info = simu.getFieldsAtCoords("RBX, RBY, RBZ", xyz, elem_ids)

    # Must extract each field component from fields_info
    bx = fields_info.getValue("RBX")[0]
    by = fields_info.getValue("RBY")[0]
    bz = fields_info.getValue("RBZ")[0]
    b_vec = np.array([bx, by, bz])  # field at point

    # Calculate modulus
    b_mod = np.sqrt(bx*bx + by*by + bz*bz)

    # Report to res file
    operafea.output("Field of interest: B (Tesla)\n")
    operafea.output("Coordinate (mm): ({:1.3g}, {:1.3g}, {:1.3g})\n".format(*xyz))
    operafea.output("Times (s): {:1.5g}\n".format(ttime))
    operafea.output("Field components (Tesla): ({:1.3g}, {:1.3g}, {:1.3g})\n".format(*b_vec))
    operafea.output("Field modulus (Tesla): {:1.3g}\n".format(b_mod))
    operafea.output(" ")
    # Write results to a file
    if print_header:  # on first call only
        print_header = False
        with open(outputfile, 'w') as f:
            # Delete old file and write header
            header_labels = ["/TTIME_(s)",
                             "x_(mm)",
                             "y_(mm)",
                             "z_(mm)",
                             "Bx_(T)",
                             "By_(T)",
                             "Bz_(T)",
                             "Bmod_(T)"]
            line = ('{:>13s} ' * 8).format(*header_labels)
            f.write(line + '\n')

    with open(outputfile, 'a+') as f:
        # Write time, position and field values in columns
        line = ('{:13.3E} ' * 8).format(ttime, xyz[0], xyz[1], xyz[2], bx, by, bz, b_mod)
        f.write(line + '\n')

    operafea.output(" ---- Data extraction at end of time step (complete) ----\n")
