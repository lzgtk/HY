import maya.cmds as cmds
#driven: all arms and joint; driver: the translateX of the ball
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateX',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateY',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateZ',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateX',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateY',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateZ',currentDriver='ball.translateX')
#set the new values
cmds.move( -2.5, 0, 0, 'ball', relative=True)
cmds.rotate( '-54', '82', 0, 'SF2|RShoulderJoint|RightArm')
cmds.rotate( '19', '147', '90', 'SF2|RShoulderJoint|RightArm|RHandJoint|RHand')
#reset driven: all arms and joint; driver: the translateX of the ball
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateX',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateY',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm|RHandJoint|RHand.rotateZ',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateX',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateY',currentDriver='ball.translateX')
cmds.setDrivenKeyframe('SF2|RShoulderJoint|RightArm.rotateZ',currentDriver='ball.translateX')