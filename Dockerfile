FROM ros:foxy

ENV ROS_DOMAIN_ID=10
WORKDIR /app

COPY ./src src
COPY entrypoint.sh entrypoint.sh
RUN rosdep install -i --from-path src --rosdistro foxy -y
RUN colcon build

ENTRYPOINT ["/app/entrypoint.sh"]