import glob
import subprocess

for chplf in glob.glob("*.chpl"):
    print("**************** Compiling " + chplf+ "**************************")
    cout = ""
    try:
        cout = subprocess.check_output("chpl "+ chplf, shell=True, stderr=subprocess.PIPE)
    except subprocess.CalledProcessError as e:
        cout = e.output
        code = e.returncode
        print("RETURN CODE IS :" + str(code))
    print(cout)
    print("******************************************************************")
    
