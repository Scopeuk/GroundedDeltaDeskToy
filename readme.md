# Grounded Delta Desk Toy
This is a quick and basic openscad model, it's small and quick to print, it requires three non-printed parts (skate/608 bearings)
![Image of the pinned assembly Grounded Delta Desk Toy](/Images/deltatoy_pinned.jpg)


## Parts list to print
| Part | Count |
| ---- | ----- |
|Arm | 6 |
| wrist | 3 |
| shoulder | 3 |
| tool | 1 |
| base | 1 |
| pins | 12 |

All printed parts should print in the openscad export orientation without supports

## Non-printed parts
| Part | Count |
| ---- | ----- |
| 806 bearing | 3 |


## Assembly instructions
1. Place bearings into the big hole on the bottom of each shoulder
2. Assemble an arm by plassing two segments together and connecting with a pin, the pin should go into a hole with a chamfer in the first part and through to a hole without a chamfer, all chamfers should face outwards
3. Place a pin through the chamfered hole in the wrist and into the hole on the top arm, note the wrist will sit above the other arm section, if the wrist would be upside down rotate the arm 180 degrees
4. Place a pin through the chamfered hole in the bottom of the arm and into the hole in the shoulder, note that the seam between the arm and shoulder should be centered
5. Repeat this for the other two arms
6. Place three pins through the tool part and into the bottom side of each wrist
7. Sit the assembly on top of the base (one shoulder onto each pin)


## Known Problems
* The tolerance on the bearings is a little loose, the first version has a small piece of electrical tape over each peg and on the edge of each bearing to tighten it up
* new pinned joints are a big improvement but they are quite stiff to install, I used a small trigger clamp


## This Branch
This branch create a demo set for an alternative fixing method where all parts have either a pass through hole or a mating point for a pin. all parts are then pinned togeather

The pinned joints provide constraint and the ability to rotate

![Pin joint components](/Images/pinDemo.png)
The pin (green) passes through the moving part (blue) and anchors in the static part (red)
the pin to static joint is a friction fit
there is a necked down part of the pin to allow for reduced friction on the moving part, the cone on the pin acts as an alignment point

## Where STL?
STL files are generated using github actions to make sure they are up to date with the repo
visit [https://github.com/Scopeuk/GroundedDeltaDeskToy/actions] 
select the latest build with the branch name (highlighted in blue) that matches what you are after "PegJoint" for this branch
![Github actions reference](/Images/actions.png)
Select the download button in the artefacts section
![Github actions reference](/Images/artecfacts.png)


