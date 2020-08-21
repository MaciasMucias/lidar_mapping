// Auto-generated. Do not edit!

// (in-package find_moving_objects.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MovingObject = require('./MovingObject.js');

//-----------------------------------------------------------

class MovingObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.origin_node_name = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('origin_node_name')) {
        this.origin_node_name = initObj.origin_node_name
      }
      else {
        this.origin_node_name = '';
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovingObjectArray
    // Serialize message field [origin_node_name]
    bufferOffset = _serializer.string(obj.origin_node_name, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = MovingObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovingObjectArray
    let len;
    let data = new MovingObjectArray(null);
    // Deserialize message field [origin_node_name]
    data.origin_node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = MovingObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.origin_node_name.length;
    object.objects.forEach((val) => {
      length += MovingObject.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'find_moving_objects/MovingObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61dd63363b01476d95238afd8aff090e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The name of the ROS node sending this message.
    string origin_node_name
    
    # The objects themselves are stored in an array
    # (i.e. a vector). The number of elements in the 
    # array is obtained using objects.size() in C++.
    MovingObject[] objects
    ================================================================================
    MSG: find_moving_objects/MovingObject
    # stamp is the time at which the sensor scanned this 
    # object. 
    # frame_id is the frame (i.e. coordinate system) of the 
    # sensor - this is the frame in which the given relative 
    # information below (the variables position, velocity, 
    # speed, angle_* etc.) is valid.
    # seq is not really used.
    Header header
    
    # The frame which is considered world-fixed and never 
    # moves. Note that the robot's position in this frame 
    # can be discontinuous.
    # The variables *_in_map_frame below are specified in 
    # this frame.
    string map_frame
    
    # The frame in which the movement of the robot is always
    # continuous and in which all transforms are made.
    # The variables *_in_fixed_frame below are 
    # specified in this frame.
    string fixed_frame
    
    # The frame which is considered fixed on the robot and 
    # in which the variables *_in_base_frame below are
    # specified.
    string base_frame
    
    # The width of the object as seen by the given 
    # sensor (calculated based on angle_begin, angle_end,
    # distance_angle_begin and distance_angle_end as 
    # given below using the law of cosine).
    float64 seen_width
    
    # In frame header.frame_id, angles are measured around 
    # the positive Z axis (counterclockwise; Z is pointing up)
    # with zero angle being forward along the x axis, provided
    # that the frame is not an optical/camera frame.
    # In case of an optical frame (Z is pointing forward and Y
    # is pointing down), then angles are measured around the 
    # negative Y axis.
    # The angles given specify where the object is to be
    # found in the frame header.frame_id (this is thus 
    # relative to the X-axis of the sensor in a regular frame
    # and relative the Z-axis, but negated, in an optical frame).
    float64 angle_begin
    float64 angle_end
    
    # The scanned distances to the object's end points as 
    # specified by angle_begin and angle_end.
    float64 distance_at_angle_begin
    float64 distance_at_angle_end
    
    # The averaged distance (approximated to be at 
    # (angle_begin+angle_end)/2) from the sensor to the seen
    # object.
    float64 distance
    
    # Position and velocity of the object.
    geometry_msgs/Point position_in_map_frame
    geometry_msgs/Point position_in_fixed_frame
    geometry_msgs/Point position_in_base_frame
    geometry_msgs/Point position
    geometry_msgs/Vector3 velocity_in_map_frame
    geometry_msgs/Vector3 velocity_in_fixed_frame
    geometry_msgs/Vector3 velocity_in_base_frame
    geometry_msgs/Vector3 velocity
    
    # For convenience, the normalized velocity vector is
    # also given, along with the scale factor (speed).
    geometry_msgs/Vector3 velocity_normalized_in_map_frame
    geometry_msgs/Vector3 velocity_normalized_in_fixed_frame
    geometry_msgs/Vector3 velocity_normalized_in_base_frame
    geometry_msgs/Vector3 velocity_normalized
    float64 speed_in_map_frame
    float64 speed_in_fixed_frame
    float64 speed_in_base_frame
    float64 speed
    
    # The point on the object closest to the sensor.
    geometry_msgs/Point closest_point_in_map_frame
    geometry_msgs/Point closest_point_in_fixed_frame
    geometry_msgs/Point closest_point_in_base_frame
    geometry_msgs/Point closest_point
    
    # For convenience, the distance from the sensor to the 
    # closest point on the object and at what angle it is to 
    # be found in relation to the sensor (i.e. 
    # header.frame_id).
    float64 closest_distance
    float64 angle_for_closest_distance
    
    # A measure on how confident the sending node is about 
    # the specified information.
    float64 confidence
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovingObjectArray(null);
    if (msg.origin_node_name !== undefined) {
      resolved.origin_node_name = msg.origin_node_name;
    }
    else {
      resolved.origin_node_name = ''
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = MovingObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = MovingObjectArray;
