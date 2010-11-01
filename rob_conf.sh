# Configuration for robot_menu which is used during testing.

#the robot ip address or name, this can be a space separated list
#eg ROBOTS="zadeat-1 zadeat-2 zadeat-3"
#DEFAULT_ROBOTS="zadeat-4"
#DEFAULT_ROBOTS="172.16.35.16"
DEFAULT_ROBOTS="hannibal face murdoch b-a amy"


ENABLE_CHECK_ROBOT_CONNECTION=1

#This is name of the remote repository where changes can be found.
GIT_REMOTE_NAME=tobi

#These plugins appear on the build and deploy menu
TOURNAMENT_PLUGINS="fvbase fvfountain fvnao_ball naomotion worldmodel skiller"

#space separated list of plugins which can be loaded from the menu
ADDITIONAL_PLUGINS="naomotion skiller luaagent refboxcomm firevision fvbase fvfountain fvretriever"

#options used when building fawkes-nao, leave empty if not needed
MAKE_ARGS=-j2 

#The location of fawkes, trailing slash required
FAWKES_HOME=/home/jkirk/projects/tug.fawkes-nao

#Location of the refcommbox java program
ROBOCUP_GAMECONTROLLER_HOME=/home/zadeat/Download/GameController/

#constants you probably don't want to change
FIREVISION_CAM_CONFIG=retriever_cam0
FIREVISION_RETRIEVER_CONFIG=/firevision/retriever/camera/cam0
FIREVISION_MOUTH_CONFIG=/firevision/nao/camera/mouth/device
FIREVISION_BROW_CONFIG=/firevision/nao/camera/brow/device

FIREVISION_CAM_STRING="nao:cam:device=/dev/video0:i2c_device=/dev/i2c-0:cam=<WHICH_CAM>:read_method=MMAP:fps=15:format=YUYV:size=320x240:aec=false:awb=false:agc=false:brightness=75:contrast=75:saturation=200:red_balance=100:blue_balance=100:exposure=1000:gain=25"
