# ubuntu 22.04
FROM ubicoders/ros:uxrcedds

COPY download_px4_autopilot.bash /home/ubuntu/download_px4_autopilot.bash
RUN bash /home/ubuntu/download_px4_autopilot.bash
RUN bash /home/ubuntu/PX4-Autopilot/Tools/setup/ubuntu.sh
RUN mkdir -p /home/ubuntu/mavlink_test/my_dialects
RUN pip install setuptools==58.2.0
WORKDIR /home/ubuntu
