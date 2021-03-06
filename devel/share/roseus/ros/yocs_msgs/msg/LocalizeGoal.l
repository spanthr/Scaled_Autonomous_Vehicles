;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::LocalizeGoal)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'LocalizeGoal (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::LOCALIZEGOAL")
  (make-package "YOCS_MSGS::LOCALIZEGOAL"))

(in-package "ROS")
;;//! \htmlinclude LocalizeGoal.msg.html


(intern "*STAND_AND_LOCALIZE*" (find-package "YOCS_MSGS::LOCALIZEGOAL"))
(shadow '*STAND_AND_LOCALIZE* (find-package "YOCS_MSGS::LOCALIZEGOAL"))
(defconstant yocs_msgs::LocalizeGoal::*STAND_AND_LOCALIZE* 10)
(intern "*SPIN_AND_LOCALIZE*" (find-package "YOCS_MSGS::LOCALIZEGOAL"))
(shadow '*SPIN_AND_LOCALIZE* (find-package "YOCS_MSGS::LOCALIZEGOAL"))
(defconstant yocs_msgs::LocalizeGoal::*SPIN_AND_LOCALIZE* 20)
(defclass yocs_msgs::LocalizeGoal
  :super ros::object
  :slots (_command _distortion ))

(defmethod yocs_msgs::LocalizeGoal
  (:init
   (&key
    ((:command __command) 0)
    ((:distortion __distortion) 0.0)
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _distortion (float __distortion))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:distortion
   (&optional __distortion)
   (if __distortion (setq _distortion __distortion)) _distortion)
  (:serialization-length
   ()
   (+
    ;; int8 _command
    1
    ;; float32 _distortion
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _command
       (write-byte _command s)
     ;; float32 _distortion
       (sys::poke _distortion (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _command 127) (setq _command (- _command 256)))
   ;; float32 _distortion
     (setq _distortion (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yocs_msgs::LocalizeGoal :md5sum-) "6383995712d8736902464bbea6b0fb6d")
(setf (get yocs_msgs::LocalizeGoal :datatype-) "yocs_msgs/LocalizeGoal")
(setf (get yocs_msgs::LocalizeGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
int8 command
float32 distortion

int8 STAND_AND_LOCALIZE=10
int8 SPIN_AND_LOCALIZE =20

")



(provide :yocs_msgs/LocalizeGoal "6383995712d8736902464bbea6b0fb6d")


