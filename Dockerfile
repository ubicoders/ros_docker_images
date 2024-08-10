FROM ubicoders/ros2:u22_cuda12.1_zed

RUN apt update && apt upgrade -y

COPY download_bridge_px4_ros.bash /home/ubuntu/
COPY install_uxrce.bash /home/ubuntu/install_uxrce.bash
RUN bash /home/ubuntu/install_uxrce.bash
RUN rm /home/ubuntu/install_uxrce.bash
RUN rm -rf /home/ubuntu/robot_ws/Micro-XRCE-DDS-Agent
RUN pip uninstall empy -y
RUN pip install empy==3.3.4
WORKDIR /home/ubuntu
