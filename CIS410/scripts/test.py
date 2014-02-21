import maya.cmds as cmds

cubeList = cmds.ls ('myCube*')

if len(cubeList) > 0:
    cmds.delete(cubeList)

result = cmds.polyCube(w=1,h=1,d=1,name='myCube#')

#print 'result: ' + str(result)

transformName=result[0]

for i in range(0, 50):

    instanceResult=cmds.instance(transformName, name=transformName+'_instance#')
    
    #print 'instanceResult ' + str( instanceResult )
    
    cmds.move(0, i, 0, instanceResult)