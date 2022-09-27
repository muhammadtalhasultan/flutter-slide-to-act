## [3.0.1] - 27/09/2022

- Bugfix: Added null check for _containerKey.currentContext and _sliderKey.currentContext. Added a fallback in case that it is not available. Also added a security check if Widget is still mounted to widget tree

## [3.0.0] - 22/07/2022

- Bugfix: The slide distance is calculated correctly even if size properties changes. 
    - BREAKING CHANGE: replaced sliderButtonYOffset by horizontalButtonPadding

## [2.0.1] - 13/03/2021

- Migrated to NNBD
- Add sliderRotate bool option
- Add possibility to customize textStyle

## [0.1.3+1] - 11/10/2020

- Fixed recent flutter version compatibility issue

## [0.1.3] - 09/05/2020

- Fixed a bug that was not applying curves to animations

## [0.1.2] - 05/05/2020

- Properly dispose animation controllers

## [0.1.1] - 04/05/2020

- Handle onHorizontalDragStart

## [0.1.0+2] - 04/05/2020

- First version