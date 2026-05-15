# Grounded Delta Desk Toy
This is a quick and basic openscad model, it's small and quick to print. All parts are printed
![Image of the pinned assembly Grounded Delta Desk Toy](/Images/dualSingleDof.jpg)


## Parts list to print
| Part | Count |
| ---- | ----- |
| Arm | 12 |
| Elbow | 6 |
| tool | 1 |
| base | 1 |
| pins | 30 |

All printed parts should print in the openscad export orientation without supports


## Assembly instructions
1. two arms pin to the flat surface of the elbow.
2. the other end of the two arms pin to the flat surface of another elbow.
3. arms pin to base.
4. an elbow pins between the other end of these arms.
5. tool pins through to each of the elbows


## Known Problems
* pinned joints are a big improvement but they are quite stiff to install, I used a small trigger clamp


The pinned joints provide constraint and the ability to rotate

![Pin joint components](/Images/pinDemo.png)
The pin (green) passes through the moving part (blue) and anchors in the static part (red)
the pin to static joint is a friction fit
there is a necked down part of the pin to allow for reduced friction on the moving part, the cone on the pin acts as an alignment point

## Where STL?
STL files are generated using github actions to make sure they are up to date with the repo
visit [Actions for this branch](https://github.com/Scopeuk/GroundedDeltaDeskToy/actions?query=branch%3AtwinSingleDof) and grab the latest buil

 
![Github actions reference](/Images/actions.png)
Select the download button in the artefacts section
![Github actions reference](/Images/artecfacts.png)


