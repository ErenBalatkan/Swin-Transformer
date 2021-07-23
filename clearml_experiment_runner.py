import os
import subprocess

print(" = " * 20)
print(" STARTING EXPERIMENT ")
print(" = " * 20)

# subprocess.call(['bash', './clearml_start_experiment.sh'])
subprocess.call(['bash', './launchers/swin_384.sh'])
