import maya.cmds as cmds

selectionList = cmds.ls( orderedSelection=True, type='transform')
if len(selectionList) >= 2:
    targetName = selectionList[0]
    selectionList.remove(targetName)
    locationGroupName=cmds.group(empty=True, name='expantion_locator_grp#')
    maxexpansion=100 
    newAttributeName= 'expansion'
    if not cmds.objectExist( '%s.%s' %( targetName, newAttributeName))
        cmds.select( targetName )
        cmds.addAttr(longName= newAttributeName, shortName='exp',
                    attributType='double', min=0, max=maxexpansion,
                    defaultValue=maxexpansion, keyable=True)
    for objectName in selectionList:
       coords = cmds.getAttr('%s.translate' % (objectName))[0]
       locatorName=cmds.spaceLocator(position=coords, name='%s_loc#' % (objectName))[0]
       cmds.xform(locatorName, centerPivots=True)
       cmds.parent( locatorName, locatorGroupName);
       pointConstraintName= cmds.pointConstraint( [targetName, locatorName], objectName, name='%s_pointConstraint#' %(objectName))[0]
       cmds.expression(alwaysEvaluate=True, name='%s_attributeWeight' % (objectName),
                   object=pointConstraintName,
                   string='%sW0=%s-%s.%s' % (targetName, maxexpansion, targetName, newAttributeName)
       cmds.connectAttr('%s.%s' % (targetName, newAttributeName),............
    cmds.xform(locatorGroupName, centerPivots=True) 
else:
    print 'At least select two items'
    