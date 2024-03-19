# ubuntu 22.04
FROM ubicoders/u22_ros2_humble:latest

COPY download_bridge_px4_ros.bash /home/ubuntu/
COPY install_uxrce.bash /home/ubuntu/install_uxrce.bash
RUN bash /home/ubuntu/install_uxrce.bash
RUN rm /home/ubuntu/install_uxrce.bash
RUN rm -rf /home/ubuntu/robot_ws/Micro-XRCE-DDS-Agent
WORKDIR /home/ubuntu
