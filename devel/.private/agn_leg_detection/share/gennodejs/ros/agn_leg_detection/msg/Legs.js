// Auto-generated. Do not edit!

// (in-package agn_leg_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Leg = require('./Leg.js');

//-----------------------------------------------------------

class Legs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.legsCrowd = null;
      this.count = null;
      this.first = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('legsCrowd')) {
        this.legsCrowd = initObj.legsCrowd
      }
      else {
        this.legsCrowd = [];
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = [];
      }
      if (initObj.hasOwnProperty('first')) {
        this.first = initObj.first
      }
      else {
        this.first = 0;
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Legs
    // Serialize message field [legsCrowd]
    // Serialize the length for message field [legsCrowd]
    bufferOffset = _serializer.uint32(obj.legsCrowd.length, buffer, bufferOffset);
    obj.legsCrowd.forEach((val) => {
      bufferOffset = Leg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [count]
    bufferOffset = _arraySerializer.int64(obj.count, buffer, bufferOffset, null);
    // Serialize message field [first]
    bufferOffset = _serializer.int64(obj.first, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.int64(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Legs
    let len;
    let data = new Legs(null);
    // Deserialize message field [legsCrowd]
    // Deserialize array length for message field [legsCrowd]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.legsCrowd = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.legsCrowd[i] = Leg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [count]
    data.count = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [first]
    data.first = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.legsCrowd.length;
    length += 8 * object.count.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agn_leg_detection/Legs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76d9ee6e4cc8f63f7aa21a45f727d8d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    agn_leg_detection/Leg[] legsCrowd
    int64[] count
    int64 first
    int64 end
     
    
    ================================================================================
    MSG: agn_leg_detection/Leg
    geometry_msgs/Pose pose
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Legs(null);
    if (msg.legsCrowd !== undefined) {
      resolved.legsCrowd = new Array(msg.legsCrowd.length);
      for (let i = 0; i < resolved.legsCrowd.length; ++i) {
        resolved.legsCrowd[i] = Leg.Resolve(msg.legsCrowd[i]);
      }
    }
    else {
      resolved.legsCrowd = []
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = []
    }

    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = 0
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = 0
    }

    return resolved;
    }
};

module.exports = Legs;
