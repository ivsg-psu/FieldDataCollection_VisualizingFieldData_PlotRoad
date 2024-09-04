
# FieldDataCollection_VisualizingFieldData_PlotRoad

<!--
The following template is based on:
Best-README-Template
Search for this, and you will find!
>
<!-- PROJECT LOGO -->
<br />
<p align="center">
  <!-- <a href="https://github.com/ivsg-psu/FeatureExtraction_Association_PointToPointAssociation">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a> -->

  <h2 align="center"> # FieldDataCollection_VisualizingFieldData_PlotRoad
  </h2>

  <pre align="center">
    <img src=".\Images\plotRoad.jpg" alt="Plot of a trace on the road of LTI Test Track" width="960" height="540">
</pre>

  <p align="center">
    The purpose of this code is to plot various types of geometric shapes and LLA and ENU data on geoplot or ENU plots. This library aims to visualize collected data, for example including color-mapping key variables onto geo-locations, thus allowing easy geo-data analysis.
    <br />
  </p>
</p>

***

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
        <a href="#getting-started">Getting Started</a>
        <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#repo-structure">Repo Structure</a>
      <ul>
        <li><a href="#directories">Top-Level Directories</li>
        <li><a href="#dependencies">Dependencies</li>
      </ul>
    </li>
      <li><a href="#functions">Functions</li>
      <ul>
        <li><a href="#core-functions">Core Functions</li>
        <ul>
          <li><a href="#fcn_plotroad_plotxy">fcn_plotRoad_plotXY - plots XY data with user-defined formatting</li>
          <li><a href="#fcn_plotroad_plotxyi">fcn_plotRoad_plotXYI - plots XY data with intensiy color mapping</li>
          <li><a href="#fcn_plotroad_plotxyz">fcn_plotRoad_plotXYZ - plots XYZ data with user-defined formatting strings</li>
          <li><a href="#fcn_plotroad_plotxyzi">fcn_plotRoad_plotXYZI - plots XYZ data with intensiy color mapping</li>
          <li><a href="#fcn_plotroad_plotll">fcn_plotRoad_plotLL - geoplots Latitude and Longitude data with user-defined formatting strings</li>
          <li><a href="#fcn_plotroad_plotlli">fcn_plotRoad_plotLLI - geoplots Latitude and Longitude data with intensiy color mapping</li>
        </ul>
        <li><a href="#animation-functions">Animation Functions</li>
        <ul>
          <li><a href="#fcn_plotroad_animatehandlesonoff">fcn_plotRoad_animateHandlesOnOff - animates a list of handles by on/off</li>
          <li><a href="#fcn_plotroad_animatehandlesdataslide">fcn_plotRoad_animateHandlesDataSlide - animates a list of handles by data sliding</li>
          <li><a href="#fcn_plotroad_animateplot">fcn_plotRoad_animatePlot - creates animations of various plot types</li>
        </ul>
        <li><a href="#supporting-functions">Supporting Functions</li>
        <ul>
          <li><a href="#fcn_plotroad_calcrectanglexyz">fcn_plotRoad_calcRectangleXYZ - finds the XY(Z) coordinates of a rectangle</li>
          <li><a href="#fcn_plotroad_breakarraybynans">fcn_plotRoad_breakArrayByNans - breaks data separated by nan into subdata</li>
          <li><a href="#fcn_plotroad_plottracexy">fcn_plotRoad_plotTraceXY - plots EN components of ENU data as a trace</li>
          <li><a href="#fcn_plotroad_plottracell">fcn_plotRoad_plotTraceLL - plots LL components of LLA data as a trace</li>
          <li><a href="#fcn_plotroad_plottraces">fcn_plotRoad_plotTraces - plots traces in LLA, ENU, and/or STH coords given one of three formats, returning all formats</li>
          <li><a href="#fcn_plotroad_calclaneboundaries">fcn_plotRoad_calcLaneBoundaries - calculates left and right lane boundaries by projecting a fixed distance from XYdata</li>
          <li><a href="#fcn_plotroad_calclaneboundingbox">fcn_plotRoad_calcLaneBoundingBox - generates polyshape bounding box of lane</li>
          <li><a href="#fcn_plotroad_plotllcircle">fcn_plotRoad_plotLLcircle - geoplots a circle</li>
          <li><a href="#fcn_plotroad_reducecolormap">fcn_plotRoad_reduceColorMap - produces a reduced colorMap matrix</li>
        </ul>
      </ul>
    <li><a href="#usage">Usage Examples</a></li>
     <ul>
     <li><a href="#general-usage">General Usage</li>
     <li><a href="#examples">Advanced Examples</li>
     </ul>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

A little about the ADS project for which this repository was created:

The USDOT ADS Demonstration Grants Program appropriated funding for a "highly automated vehicle research and development program" to fund planning, direct research, and demonstration grants for ADS and other driving automation systems and technologies. The demonstration grant included funds for testing the safe integration of ADS into our Nation's on-road transportation system. PennDOT plans to utilize these funds for research and development, planning, testing, demonstrating, and deploying the safe integration of AVs in the work zones through this grant. Through this demonstration, PennDOT and the project team aim to solve the challenge of safe integration of AVs into most work zones by examining if improved connectivity, enhanced visibility, and HD mapping will enable AVs to safely travel the work zones. The team will demonstrate how the operation of AVs in work zones can be tested, improved and standardized in three phases, this repository is built for phase 2.

The team has identified 17 common work zone scenarios/configurations in different urban, rural, and suburban settings on limited access facilities and urban arterials, typical to not only Pennsylvania, but other states too. Connected vehicle equipment will be added to the appropriate traffic control devices, construction workers and vehicles (collectively called work zone artifacts). Pavement markings and work zone artifacts will be enhanced with special coatings to improve visibility specifically for the AVs. For each of the work zone scenarios, the team will conduct simulation and closed track testing at the PSU test track.

You can find more information about the ADS project at :
<a href="https://www.penndot.pa.gov/ProjectAndPrograms/ResearchandTesting/Autonomous%20_Vehicles/Pages/ADS-Demonstration.aspx">PennDOT ADS Project</a>

This repository was created to better visualize and plot the location and time data collected by the CV2X communication system. The functions in this repo can also be used to plot geometric shapes that represenat range of coverage and Autonomous Vehicle (as a rectangle).

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

## Getting Started

### Installation

1. Make sure to run MATLAB 2020b or higher. Why? The "digitspattern" command used in the DebugTools utilities was released late 2020 and this is used heavily in the Debug routines. If debugging is shut off, then earlier MATLAB versions will likely work, and this has been tested back to 2018 releases.

2. Clone the repo

   ```sh
   git clone https://github.com/ivsg-psu/fielddatacollection_visualizingfielddata_plotroad/commits/main/
   ```

3. Run the main code in the root of the folder (script_demo_plotTestTrack.m). This will download the required utilities for this code, unzip the zip files into a Utilities folder (.\Utilities), and update the MATLAB path to include the Utility locations. This install process will only occur the first time. Note: to force the install to occur again, delete the Utilities directory

4. Confirm it works! Run script_demo_plotTestTrack. If the code works, the script should run without errors. This script produces numerous example images such as those in this README file.

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

## Repo Structure

### Top-Level Directories

The following are the top level directories within the repository:
<ul>
<li>/Data folder: The data folder contains any .mat or csv files that are used as inputs for the plotting functions</li>
 <li>/Functions folder: Contains all functions and their test scripts.</li>
 <li>/Images folder: Images that are pertinant to the functions or any   documentations are stored in this folder.</li>
 <li>/Utilities: Dependencies that are utilized but not implemented in this repository are placed in the Utilities directory. These can be single files but are most often other cloned repositories.</li>
</ul>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

### Dependencies

* [Errata_Tutorials_DebugTools](https://github.com/ivsg-psu/Errata_Tutorials_DebugTools) - The DebugTools repo is used for the initial automated folder setup, and for input checking and general debugging calls within subfunctions. The repo can be found at: <https://github.com/ivsg-psu/Errata_Tutorials_DebugTools>

* [PathPlanning_PathTools_PathClassLibrary](https://github.com/ivsg-psu/PathPlanning_PathTools_PathClassLibrary) - the PathClassLibrary contains tools used to find intersections of the data with particular line segments, which is used to find start/end/excursion locations in the functions. The repo can be found at: <https://github.com/ivsg-psu/PathPlanning_PathTools_PathClassLibrary>

* [FieldDataCollection_GPSRelatedCodes_GPSClass](https://github.com/ivsg-psu/FieldDataCollection_GPSRelatedCodes_GPSClass) - This library contains code to support conversions among coordinate systems commonly used for GPS data. These include: East-North-Up (ENU), Latitude-Longitude-Altitude (LLA), and Earth-Centered-Earth-Fixed (ECEF) systems. Note that UTM coordinates are not yet supported. The repo can be found at: <https://github.com/ivsg-psu/FieldDataCollection_GPSRelatedCodes_GPSClass>

* [FeatureExtraction_Association_LineFitting](https://github.com/ivsg-psu/FeatureExtraction_Association_LineFitting) - The purpose of this code is Basic line fitting code, including vertical line fitting and regression fitting. The repo can be found at: <https://github.com/ivsg-psu/FeatureExtraction_Association_LineFitting>

* [PathPlanning_GeomTools_FindCircleRadius](https://github.com/ivsg-psu/PathPlanning_GeomTools_FindCircleRadius) - This code calculates the center of a circle from three points given as vectors in x and y. The repo can be found at: <https://github.com/ivsg-psu/PathPlanning_GeomTools_FindCircleRadius>

* [FeatureExtraction_DataClean_BreakDataIntoLaps](https://github.com/ivsg-psu/FeatureExtraction_DataClean_BreakDataIntoLaps) - The purpose of this code is to break data into "laps", e.g. segments of data that are defined by a clear start condition and end condition. The code finds when a given path meets the "start" condition, then meets the "end" condition, and returns every portion of the path that is inside both conditions. The repo can be found at: <https://github.com/ivsg-psu/FeatureExtraction_DataClean_BreakDataIntoLaps>

* [PathPlanning_MapTools_ParseXODR](https://github.com/ivsg-psu/PathPlanning_MapTools_ParseXODR) - Cannot find this library. The repo can be found at: <https://github.com/ivsg-psu/PathPlanning_MapTools_ParseXODR>

* [PathPlanning_GeomTools_GeomClassLibrary](https://github.com/ivsg-psu/PathPlanning_GeomTools_GeomClassLibrary) - This is a library of MATLAB functions related to geometric calculations for paths. The repo can be found at: <https://github.com/ivsg-psu/PathPlanning_GeomTools_GeomClassLibrary>

<a href="#fielddatacollection_visualizingfielddata_loadworkzone">Back to top</a>

***

## Functions

### Core Functions

#### fcn_plotRoad_plotXY

plots XY data with user-defined formatting strings

 **FORMAT:**

  ```Matlab
    h_plot = fcn_plotRoad_plotXY(XYdata, (plotFormat), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotXY.jpg" alt="fcn_plotRoad_plotXY picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotXY</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotXYI**

plots XY data with intensiy color mapping

 **FORMAT:**

  ```Matlab
    h_plot = fcn_plotRoad_plotXYI(XYIdata, (plotFormat), (colorMap), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotXYI.jpg" alt="fcn_plotRoad_plotXYI picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotXYI</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotXYZ**

plots XYZ data with user-defined formatting strings

 **FORMAT:**

  ```Matlab
    h_plot = fcn_plotRoad_plotXYZ(XYZdata, (plotFormat), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotXYZ.jpg" alt="fcn_plotRoad_plotXYZ picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotXYZ</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotXYZI**

plots XYZ data with intensiy color mapping

 **FORMAT:**

  ```Matlab
    h_plot = fcn_plotRoad_plotXYZI(XYZIdata, (plotFormat), (colorMap), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotXYZI.jpg" alt="fcn_plotRoad_plotXYZI picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotXYZI</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotLL**

geoplots Latitude and Longitude data with user-defined formatting strings

 **FORMAT:**

  ```Matlab
    h_geoplot = fcn_plotRoad_plotLL((LLdata), (plotFormat), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotLL.jpg" alt="fcn_plotRoad_plotLL picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotLL</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotLLI**

geoplots Latitude and Longitude data with intensiy color mapping

 **FORMAT:**

  ```Matlab
    h_geoplot = fcn_plotRoad_plotLLI(LLdata, (plotFormat), (colorMap), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotLLI.jpg" alt="fcn_plotRoad_plotLLI picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotLLI</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

### Animation functions

#### **fcn_plotRoad_animateHandlesOnOff**

animates a list of handles by on/off

This function creates an animation of handles by turning selected plots
on/off in sequence, creating the appearance of motion. If an array of
handles is given in a sequence [h(1); h(2); h(3); ... etc], then when
timeIndex is set to 1, then only h(1) is shown. When set to 2, then only
h(2) is shown. When h(1)...h(M) are set up in sequence, the illusion of
motion is created. A user-defined skipInterval can be given to create
intervals other than 1 to 2 to 3. For example, a skip interval of 3 jumps
from (1 and 4 and 7...) to (2 and 5 and 8... ) etc.

 **FORMAT:**

  ```Matlab
  fcn_plotRoad_animateHandlesOnOff(timeIndex, handleList, Xdata, Ydata, (skipInterval), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_animateHandlesOnOff.gif" alt="fcn_plotRoad_animateHandlesOnOff picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animateHandlesOnOff</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_animateHandlesDataSlide**

animates a list of handles by data sliding

This function creates an animation of handles by "sliding" data through
the handles. For example, assume 4 data handles are given as
handleList(1)...handleList(4), and each handle points to a plot of [1xN]
data in X, and [1xN] data in Y, and Xdata and Ydata both contain
matricies [KxN] which contain K timesteps of data in X and Y
respectively, as rows. The code "slides" the data "up" into the handles
such that, at the first time interval, handleList(4) is filled with the
first row of X and Y data. At the second time interval, handleList(3) is
filled with the first row, and handleList(4) is the second row. At the
3rd time interval, handleList(2) is filled with the 1st row,
handleList(3) the 2nd row, and handleList(4) the 3rd row. Etc. This
"sliding" method allows formatting defined within the handle definitions
to be applied repeatedly across a data set, creating the illusion of
animation.

 **FORMAT:**

  ```Matlab
  fcn_plotRoad_animateHandlesDataSlide(timeIndex, handleList, Xdata, Ydata, (afterPlotColor), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_animateHandlesDataSlide.gif" alt="fcn_plotRoad_animateHandlesDataSlide picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animateHandlesDataSlide</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_animatePlot**

creates animations of various plot types

 **FORMAT:**

  ```Matlab
  h_animatedPlot = fcn_plotRoad_animatePlot(plotTypeString, timeIndex, handleList, plotData, (plotFormat), (colorMap), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_animatePlot_plotXY_follow.gif" alt="fcn_plotRoad_animatePlot_plotXY_follow picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animatePlot with PlotXY in follow mode</figcaption>

  <img src=".\Images\fcn_plotRoad_animatePlot_plotXY_global.gif" alt="fcn_plotRoad_animatePlot_plotXY_global picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animatePlot with PlotXY in global mode</figcaption>

  <img src=".\Images\fcn_plotRoad_animatePlot_plotXYI_follow.gif" alt="fcn_plotRoad_animatePlot_plotXYI_follow picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animatePlot with PlotXYI in follow mode</figcaption>

  <img src=".\Images\fcn_plotRoad_animatePlot_plotXYI_global.gif" alt="fcn_plotRoad_animatePlot_plotXYI_global picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animatePlot with PlotXYI in global mode</figcaption>

  <img src=".\Images\fcn_plotRoad_animatePlot_plotLL_follow.gif" alt="fcn_plotRoad_animatePlot_plotLL_follow picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animatePlot with PlotLL in follow mode</figcaption>

  <img src=".\Images\fcn_plotRoad_animatePlot_plotLL_global.gif" alt="fcn_plotRoad_animatePlot_plotLL_global picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animatePlot with PlotLL in global mode</figcaption>

  <img src=".\Images\fcn_plotRoad_animatePlot_plotLLI_follow.gif" alt="fcn_plotRoad_animatePlot_plotLLI_follow picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animatePlot with PlotLLI in follow mode</figcaption>

  <img src=".\Images\fcn_plotRoad_animatePlot_plotLLI_global.gif" alt="fcn_plotRoad_animatePlot_plotLLI_global picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_animatePlot with PlotLLI in global mode</figcaption>

</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

### Supporting functions

#### **fcn_plotRoad_calcRectangleXYZ**

finds the XY(Z) coordinates of a rectangle

 **FORMAT:**

  ```Matlab
    cornersXYZ = fcn_plotRoad_calcRectangleXYZ(centerPointXYZ, LWH, (yawAngle), (centerOffsetLWH), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_calcRectangleXYZ.jpg" alt="fcn_plotRoad_calcRectangleXYZ picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_calcRectangleXYZ</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_breakArrayByNans**

breaks data separated by nan into subdata

 **FORMAT:**

  ```Matlab
    indicies_cell_array = fcn_plotRoad_breakArrayByNans(input_array, (fig_num))
  ```

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotTraceXY**

plots EN components of ENU data as a trace

 **FORMAT:**

  ```Matlab
    h_plot = fcn_plotRoad_plotTraceXY(XYdata, (plotFormat), (flag_plot_headers_and_tailers), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotTraceXY.jpg" alt="fcn_plotRoad_plotTraceXY picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotTraceXY</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotTraceLL**

plots LL components of LLA data as a trace

 **FORMAT:**

  ```Matlab
    h_plot = fcn_plotRoad_plotTraceLL(LLdata, (plotFormat), (flag_plot_headers_and_tailers), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotTraceLL.jpg" alt="fcn_plotRoad_plotTraceLL picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotTraceLL</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotTraces**

plots traces in LLA, ENU, and/or STH coords given one of three formats, returning all formats

 **FORMAT:**

  ```Matlab
         [LLA_trace, ENU_trace, STH_trace]  = fcn_plotRoad_plotTraces(...
         Trace_coordinates, input_coordinates_type,...
         (plotFormat),...
         (reference_unit_tangent_vector),...
         (flag_plot_headers_and_tailers),...
         (LLA_fig_num), (ENU_fig_num), (STH_fig_num));
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotTraces.jpg" alt="fcn_plotRoad_plotTraces picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotTraces</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_calcLaneBoundaries**

calculates left and right lane boundaries by projecting a fixed distance from XYdata

 **FORMAT:**

  ```Matlab
  [leftLaneBoundary_XY, rightLaneBoundary_XY] = fcn_plotRoad_calcLaneBoundaries(XYdata, (projectionDistance), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_calcLaneBoundaries.jpg" alt="fcn_plotRoad_calcLaneBoundaries picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_calcLaneBoundaries</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_calcLaneBoundingBox**

generates polyshape bounding box of lane

 **FORMAT:**

  ```Matlab
  boundingBoxXY = fcn_plotRoad_calcLaneBoundingBox(leftLaneBoundary_XY, rightLaneBoundary_XY, (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_calcLaneBoundingBox.jpg" alt="fcn_plotRoad_calcLaneBoundingBox picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_calcLaneBoundingBox</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_plotLLcircle**

geoplots a circle

 **FORMAT:**

  ```Matlab
  [h_geoplot, AllLatData, AllLonData, AllXData, AllYData, ringColors] = fcn_plotRoad_plotLLCircle(LL_center, radius, (plotFormat), (colorMapStringOrMatrix), (maxColorsAngles), (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_plotLLCircle.jpg" alt="fcn_plotRoad_plotLLCircle picture" width="500" height="400">
  <figcaption>Example of fcn_plotRoad_plotLLCircle</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***

#### **fcn_plotRoad_reduceColorMap**

produces a reduced colorMap matrix

This function creates a reduced-sized colorMap matrix from a given
colorMap matrix and a user-input number of colors to keep. The method of
reduction is to create an evenly divided list of numbers from 1:M, and
divide it into Ncolors of numbers, then round to the nearest integer.
This integer defines which color to use in the reduced colormap. The
first color of the input colorMap is always preserved.

NOTE: if the number of colors requested is larger than the original
colormap, the colormap is streteched but NOT resampled so that the number
of colors requested is always equal to the input Ncolors.

 **FORMAT:**

  ```Matlab
  reducedColorMap = fcn_plotRoad_reduceColorMap(colorMapMatrix, Ncolors, (fig_num))
  ```

<pre align="center">
  <img src=".\Images\fcn_plotRoad_reduceColorMap.jpg" alt="fcn_plotRoad_reduceColorMap picture" width="800" height="400">
  <figcaption>Example of fcn_plotRoad_reduceColorMap</figcaption>
</pre>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

***
<!-- USAGE EXAMPLES -->
### Usage

Each of the functions has an associated test script, using the convention

```sh
script_test_fcn_fcnname
```

where fcnname is the function name as listed above.

As well, each of the functions includes a well-documented header that explains inputs and outputs. These are supported by MATLAB's help style so that one can type:

```sh
help fcn_fcnname
```

for any function to view function details.

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>

<!-- CONTACT -->
## Contact

Sean Brennan - <sbrennan@psu.edu>

Project Link: <https://github.com/ivsg-psu/fielddatacollection_visualizingfielddata_plotroad>

<p align="right">(<a href="#fielddatacollection_visualizingfielddata_plotroad">Back to top</a>)</p>
