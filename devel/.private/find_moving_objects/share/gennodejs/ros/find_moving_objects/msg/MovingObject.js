// Auto-generated. Do not edit!

// (in-package find_moving_objects.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MovingObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.map_frame = null;
      this.fixed_frame = null;
      this.base_frame = null;
      this.seen_width = null;
      this.angle_begin = null;
      this.angle_end = null;
      this.distance_at_angle_begin = null;
      this.distance_at_angle_end = null;
      this.distance = null;
      this.position_in_map_frame = null;
      this.position_in_fixed_frame = null;
      this.position_in_base_frame = null;
      this.position = null;
      this.velocity_in_map_frame = null;
      this.velocity_in_fixed_frame = null;
      this.velocity_in_base_frame = null;
      this.velocity = null;
      this.velocity_normalized_in_map_frame = null;
      this.velocity_normalized_in_fixed_frame = null;
      this.velocity_normalized_in_base_frame = null;
      this.velocity_normalized = null;
      this.speed_in_map_frame = null;
      this.speed_in_fixed_frame = null;
      this.speed_in_base_frame = null;
      this.speed = null;
      this.closest_point_in_map_frame = null;
      this.closest_point_in_fixed_frame = null;
      this.closest_point_in_base_frame = null;
      this.closest_point = null;
      this.closest_distance = null;
      this.angle_for_closest_distance = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('map_frame')) {
        this.map_frame = initObj.map_frame
      }
      else {
        this.map_frame = '';
      }
      if (initObj.hasOwnProperty('fixed_frame')) {
        this.fixed_frame = initObj.fixed_frame
      }
      else {
        this.fixed_frame = '';
      }
      if (initObj.hasOwnProperty('base_frame')) {
        this.base_frame = initObj.base_frame
      }
      else {
        this.base_frame = '';
      }
      if (initObj.hasOwnProperty('seen_width')) {
        this.seen_width = initObj.seen_width
      }
      else {
        this.seen_width = 0.0;
      }
      if (initObj.hasOwnProperty('angle_begin')) {
        this.angle_begin = initObj.angle_begin
      }
      else {
        this.angle_begin = 0.0;
      }
      if (initObj.hasOwnProperty('angle_end')) {
        this.angle_end = initObj.angle_end
      }
      else {
        this.angle_end = 0.0;
      }
      if (initObj.hasOwnProperty('distance_at_angle_begin')) {
        this.distance_at_angle_begin = initObj.distance_at_angle_begin
      }
      else {
        this.distance_at_angle_begin = 0.0;
      }
      if (initObj.hasOwnProperty('distance_at_angle_end')) {
        this.distance_at_angle_end = initObj.distance_at_angle_end
      }
      else {
        this.distance_at_angle_end = 0.0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('position_in_map_frame')) {
        this.position_in_map_frame = initObj.position_in_map_frame
      }
      else {
        this.position_in_map_frame = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('position_in_fixed_frame')) {
        this.position_in_fixed_frame = initObj.position_in_fixed_frame
      }
      else {
        this.position_in_fixed_frame = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('position_in_base_frame')) {
        this.position_in_base_frame = initObj.position_in_base_frame
      }
      else {
        this.position_in_base_frame = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('velocity_in_map_frame')) {
        this.velocity_in_map_frame = initObj.velocity_in_map_frame
      }
      else {
        this.velocity_in_map_frame = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_in_fixed_frame')) {
        this.velocity_in_fixed_frame = initObj.velocity_in_fixed_frame
      }
      else {
        this.velocity_in_fixed_frame = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_in_base_frame')) {
        this.velocity_in_base_frame = initObj.velocity_in_base_frame
      }
      else {
        this.velocity_in_base_frame = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_normalized_in_map_frame')) {
        this.velocity_normalized_in_map_frame = initObj.velocity_normalized_in_map_frame
      }
      else {
        this.velocity_normalized_in_map_frame = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_normalized_in_fixed_frame')) {
        this.velocity_normalized_in_fixed_frame = initObj.velocity_normalized_in_fixed_frame
      }
      else {
        this.velocity_normalized_in_fixed_frame = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_normalized_in_base_frame')) {
        this.velocity_normalized_in_base_frame = initObj.velocity_normalized_in_base_frame
      }
      else {
        this.velocity_normalized_in_base_frame = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_normalized')) {
        this.velocity_normalized = initObj.velocity_normalized
      }
      else {
        this.velocity_normalized = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('speed_in_map_frame')) {
        this.speed_in_map_frame = initObj.speed_in_map_frame
      }
      else {
        this.speed_in_map_frame = 0.0;
      }
      if (initObj.hasOwnProperty('speed_in_fixed_frame')) {
        this.speed_in_fixed_frame = initObj.speed_in_fixed_frame
      }
      else {
        this.speed_in_fixed_frame = 0.0;
      }
      if (initObj.hasOwnProperty('speed_in_base_frame')) {
        this.speed_in_base_frame = initObj.speed_in_base_frame
      }
      else {
        this.speed_in_base_frame = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('closest_point_in_map_frame')) {
        this.closest_point_in_map_frame = initObj.closest_point_in_map_frame
      }
      else {
        this.closest_point_in_map_frame = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('closest_point_in_fixed_frame')) {
        this.closest_point_in_fixed_frame = initObj.closest_point_in_fixed_frame
      }
      else {
        this.closest_point_in_fixed_frame = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('closest_point_in_base_frame')) {
        this.closest_point_in_base_frame = initObj.closest_point_in_base_frame
      }
      else {
        this.closest_point_in_base_frame = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('closest_point')) {
        this.closest_point = initObj.closest_point
      }
      else {
        this.closest_point = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('closest_distance')) {
        this.closest_distance = initObj.closest_distance
      }
      else {
        this.closest_distance = 0.0;
      }
      if (initObj.hasOwnProperty('angle_for_closest_distance')) {
        this.angle_for_closest_distance = initObj.angle_for_closest_distance
      }
      else {
        this.angle_for_closest_distance = 0.0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovingObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [map_frame]
    bufferOffset = _serializer.string(obj.map_frame, buffer, bufferOffset);
    // Serialize message field [fixed_frame]
    bufferOffset = _serializer.string(obj.fixed_frame, buffer, bufferOffset);
    // Serialize message field [base_frame]
    bufferOffset = _serializer.string(obj.base_frame, buffer, bufferOffset);
    // Serialize message field [seen_width]
    bufferOffset = _serializer.float64(obj.seen_width, buffer, bufferOffset);
    // Serialize message field [angle_begin]
    bufferOffset = _serializer.float64(obj.angle_begin, buffer, bufferOffset);
    // Serialize message field [angle_end]
    bufferOffset = _serializer.float64(obj.angle_end, buffer, bufferOffset);
    // Serialize message field [distance_at_angle_begin]
    bufferOffset = _serializer.float64(obj.distance_at_angle_begin, buffer, bufferOffset);
    // Serialize message field [distance_at_angle_end]
    bufferOffset = _serializer.float64(obj.distance_at_angle_end, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    // Serialize message field [position_in_map_frame]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position_in_map_frame, buffer, bufferOffset);
    // Serialize message field [position_in_fixed_frame]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position_in_fixed_frame, buffer, bufferOffset);
    // Serialize message field [position_in_base_frame]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position_in_base_frame, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity_in_map_frame]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_in_map_frame, buffer, bufferOffset);
    // Serialize message field [velocity_in_fixed_frame]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_in_fixed_frame, buffer, bufferOffset);
    // Serialize message field [velocity_in_base_frame]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_in_base_frame, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [velocity_normalized_in_map_frame]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_normalized_in_map_frame, buffer, bufferOffset);
    // Serialize message field [velocity_normalized_in_fixed_frame]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_normalized_in_fixed_frame, buffer, bufferOffset);
    // Serialize message field [velocity_normalized_in_base_frame]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_normalized_in_base_frame, buffer, bufferOffset);
    // Serialize message field [velocity_normalized]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_normalized, buffer, bufferOffset);
    // Serialize message field [speed_in_map_frame]
    bufferOffset = _serializer.float64(obj.speed_in_map_frame, buffer, bufferOffset);
    // Serialize message field [speed_in_fixed_frame]
    bufferOffset = _serializer.float64(obj.speed_in_fixed_frame, buffer, bufferOffset);
    // Serialize message field [speed_in_base_frame]
    bufferOffset = _serializer.float64(obj.speed_in_base_frame, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [closest_point_in_map_frame]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.closest_point_in_map_frame, buffer, bufferOffset);
    // Serialize message field [closest_point_in_fixed_frame]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.closest_point_in_fixed_frame, buffer, bufferOffset);
    // Serialize message field [closest_point_in_base_frame]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.closest_point_in_base_frame, buffer, bufferOffset);
    // Serialize message field [closest_point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.closest_point, buffer, bufferOffset);
    // Serialize message field [closest_distance]
    bufferOffset = _serializer.float64(obj.closest_distance, buffer, bufferOffset);
    // Serialize message field [angle_for_closest_distance]
    bufferOffset = _serializer.float64(obj.angle_for_closest_distance, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovingObject
    let len;
    let data = new MovingObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_frame]
    data.map_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fixed_frame]
    data.fixed_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_frame]
    data.base_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [seen_width]
    data.seen_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_begin]
    data.angle_begin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_end]
    data.angle_end = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_at_angle_begin]
    data.distance_at_angle_begin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance_at_angle_end]
    data.distance_at_angle_end = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_in_map_frame]
    data.position_in_map_frame = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_in_fixed_frame]
    data.position_in_fixed_frame = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_in_base_frame]
    data.position_in_base_frame = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_in_map_frame]
    data.velocity_in_map_frame = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_in_fixed_frame]
    data.velocity_in_fixed_frame = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_in_base_frame]
    data.velocity_in_base_frame = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_normalized_in_map_frame]
    data.velocity_normalized_in_map_frame = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_normalized_in_fixed_frame]
    data.velocity_normalized_in_fixed_frame = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_normalized_in_base_frame]
    data.velocity_normalized_in_base_frame = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_normalized]
    data.velocity_normalized = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [speed_in_map_frame]
    data.speed_in_map_frame = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_in_fixed_frame]
    data.speed_in_fixed_frame = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_in_base_frame]
    data.speed_in_base_frame = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [closest_point_in_map_frame]
    data.closest_point_in_map_frame = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [closest_point_in_fixed_frame]
    data.closest_point_in_fixed_frame = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [closest_point_in_base_frame]
    data.closest_point_in_base_frame = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [closest_point]
    data.closest_point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [closest_distance]
    data.closest_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_for_closest_distance]
    data.angle_for_closest_distance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.map_frame.length;
    length += object.fixed_frame.length;
    length += object.base_frame.length;
    return length + 500;
  }

  static datatype() {
    // Returns string type for a message object
    return 'find_moving_objects/MovingObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '471d2ca009fdd96d2081f5d9404ce5d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MovingObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.map_frame !== undefined) {
      resolved.map_frame = msg.map_frame;
    }
    else {
      resolved.map_frame = ''
    }

    if (msg.fixed_frame !== undefined) {
      resolved.fixed_frame = msg.fixed_frame;
    }
    else {
      resolved.fixed_frame = ''
    }

    if (msg.base_frame !== undefined) {
      resolved.base_frame = msg.base_frame;
    }
    else {
      resolved.base_frame = ''
    }

    if (msg.seen_width !== undefined) {
      resolved.seen_width = msg.seen_width;
    }
    else {
      resolved.seen_width = 0.0
    }

    if (msg.angle_begin !== undefined) {
      resolved.angle_begin = msg.angle_begin;
    }
    else {
      resolved.angle_begin = 0.0
    }

    if (msg.angle_end !== undefined) {
      resolved.angle_end = msg.angle_end;
    }
    else {
      resolved.angle_end = 0.0
    }

    if (msg.distance_at_angle_begin !== undefined) {
      resolved.distance_at_angle_begin = msg.distance_at_angle_begin;
    }
    else {
      resolved.distance_at_angle_begin = 0.0
    }

    if (msg.distance_at_angle_end !== undefined) {
      resolved.distance_at_angle_end = msg.distance_at_angle_end;
    }
    else {
      resolved.distance_at_angle_end = 0.0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.position_in_map_frame !== undefined) {
      resolved.position_in_map_frame = geometry_msgs.msg.Point.Resolve(msg.position_in_map_frame)
    }
    else {
      resolved.position_in_map_frame = new geometry_msgs.msg.Point()
    }

    if (msg.position_in_fixed_frame !== undefined) {
      resolved.position_in_fixed_frame = geometry_msgs.msg.Point.Resolve(msg.position_in_fixed_frame)
    }
    else {
      resolved.position_in_fixed_frame = new geometry_msgs.msg.Point()
    }

    if (msg.position_in_base_frame !== undefined) {
      resolved.position_in_base_frame = geometry_msgs.msg.Point.Resolve(msg.position_in_base_frame)
    }
    else {
      resolved.position_in_base_frame = new geometry_msgs.msg.Point()
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.velocity_in_map_frame !== undefined) {
      resolved.velocity_in_map_frame = geometry_msgs.msg.Vector3.Resolve(msg.velocity_in_map_frame)
    }
    else {
      resolved.velocity_in_map_frame = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_in_fixed_frame !== undefined) {
      resolved.velocity_in_fixed_frame = geometry_msgs.msg.Vector3.Resolve(msg.velocity_in_fixed_frame)
    }
    else {
      resolved.velocity_in_fixed_frame = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_in_base_frame !== undefined) {
      resolved.velocity_in_base_frame = geometry_msgs.msg.Vector3.Resolve(msg.velocity_in_base_frame)
    }
    else {
      resolved.velocity_in_base_frame = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_normalized_in_map_frame !== undefined) {
      resolved.velocity_normalized_in_map_frame = geometry_msgs.msg.Vector3.Resolve(msg.velocity_normalized_in_map_frame)
    }
    else {
      resolved.velocity_normalized_in_map_frame = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_normalized_in_fixed_frame !== undefined) {
      resolved.velocity_normalized_in_fixed_frame = geometry_msgs.msg.Vector3.Resolve(msg.velocity_normalized_in_fixed_frame)
    }
    else {
      resolved.velocity_normalized_in_fixed_frame = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_normalized_in_base_frame !== undefined) {
      resolved.velocity_normalized_in_base_frame = geometry_msgs.msg.Vector3.Resolve(msg.velocity_normalized_in_base_frame)
    }
    else {
      resolved.velocity_normalized_in_base_frame = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_normalized !== undefined) {
      resolved.velocity_normalized = geometry_msgs.msg.Vector3.Resolve(msg.velocity_normalized)
    }
    else {
      resolved.velocity_normalized = new geometry_msgs.msg.Vector3()
    }

    if (msg.speed_in_map_frame !== undefined) {
      resolved.speed_in_map_frame = msg.speed_in_map_frame;
    }
    else {
      resolved.speed_in_map_frame = 0.0
    }

    if (msg.speed_in_fixed_frame !== undefined) {
      resolved.speed_in_fixed_frame = msg.speed_in_fixed_frame;
    }
    else {
      resolved.speed_in_fixed_frame = 0.0
    }

    if (msg.speed_in_base_frame !== undefined) {
      resolved.speed_in_base_frame = msg.speed_in_base_frame;
    }
    else {
      resolved.speed_in_base_frame = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.closest_point_in_map_frame !== undefined) {
      resolved.closest_point_in_map_frame = geometry_msgs.msg.Point.Resolve(msg.closest_point_in_map_frame)
    }
    else {
      resolved.closest_point_in_map_frame = new geometry_msgs.msg.Point()
    }

    if (msg.closest_point_in_fixed_frame !== undefined) {
      resolved.closest_point_in_fixed_frame = geometry_msgs.msg.Point.Resolve(msg.closest_point_in_fixed_frame)
    }
    else {
      resolved.closest_point_in_fixed_frame = new geometry_msgs.msg.Point()
    }

    if (msg.closest_point_in_base_frame !== undefined) {
      resolved.closest_point_in_base_frame = geometry_msgs.msg.Point.Resolve(msg.closest_point_in_base_frame)
    }
    else {
      resolved.closest_point_in_base_frame = new geometry_msgs.msg.Point()
    }

    if (msg.closest_point !== undefined) {
      resolved.closest_point = geometry_msgs.msg.Point.Resolve(msg.closest_point)
    }
    else {
      resolved.closest_point = new geometry_msgs.msg.Point()
    }

    if (msg.closest_distance !== undefined) {
      resolved.closest_distance = msg.closest_distance;
    }
    else {
      resolved.closest_distance = 0.0
    }

    if (msg.angle_for_closest_distance !== undefined) {
      resolved.angle_for_closest_distance = msg.angle_for_closest_distance;
    }
    else {
      resolved.angle_for_closest_distance = 0.0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = MovingObject;
