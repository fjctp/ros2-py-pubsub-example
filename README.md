# py_pubsub

This is a simple ROS2 (Foxy) package to publish and subscript to a topic and output the message to standard output.

Reference: [ROS Tutorials](https://docs.ros.org/en/foxy/Tutorials/Writing-A-Simple-Py-Publisher-And-Subscriber.html)


## Run

To run `talker` and `listener` in its own network

```
docker-compose up
```

## Build Steps

1. source ROS FOXY

```
source /opt/ros/foxy/setup.bash
```

2. setup domain ID

```
export ROS_DOMAIN_ID=10
```

3. create a python package: `py_pubsub`

```
#ros2 pkg create --build-type ament_python py_pubsub
```

To create a package for C++, replace `ament_python` with `ament_cmake`

4. install dependencies and build the package

```
rosdep install -i --from-path src --rosdistro foxy -y
colon build --packages-select py_pubsub
```

5. source local app

```
source install/local_setup.bash
```

6. run talker

```
ros2 run py_pubsub talker
```
