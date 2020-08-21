// Auto-generated. Do not edit!

// (in-package agn_leg_detection.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class hashem {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.listtosend = null;
    }
    else {
      if (initObj.hasOwnProperty('listtosend')) {
        this.listtosend = initObj.listtosend
      }
      else {
        this.listtosend = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hashem
    // Serialize message field [listtosend]
    // Serialize the length for message field [listtosend]
    bufferOffset = _serializer.uint32(obj.listtosend.length, buffer, bufferOffset);
    obj.listtosend.forEach((val) => {
      bufferOffset = std_msgs.msg.Float32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hashem
    let len;
    let data = new hashem(null);
    // Deserialize message field [listtosend]
    // Deserialize array length for message field [listtosend]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.listtosend = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.listtosend[i] = std_msgs.msg.Float32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.listtosend.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agn_leg_detection/hashem';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9210d52caeda3a0513264e2e2ed87c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32[] listtosend
    
    ================================================================================
    MSG: std_msgs/Float32
    float32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hashem(null);
    if (msg.listtosend !== undefined) {
      resolved.listtosend = new Array(msg.listtosend.length);
      for (let i = 0; i < resolved.listtosend.length; ++i) {
        resolved.listtosend[i] = std_msgs.msg.Float32.Resolve(msg.listtosend[i]);
      }
    }
    else {
      resolved.listtosend = []
    }

    return resolved;
    }
};

module.exports = hashem;
