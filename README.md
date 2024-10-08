
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

NOTE: future versions are considering support for GeoJSON, TopoJSON, and ASCII STL syntax export, which allows direct visualization within GitHub as shown below. For more information, see:
https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams#creating-geojson-and-topojson-maps

or

https://people.sc.fsu.edu/~jburkardt/data/stla/stla.html

```stl
solid cube_corner
  facet normal 0.0 -1.0 0.0
    outer loop
      vertex 0.0 0.0 0.0
      vertex 1.0 0.0 0.0
      vertex 0.0 0.0 1.0
    endloop
  endfacet
  facet normal 0.0 0.0 -1.0
    outer loop
      vertex 0.0 0.0 0.0
      vertex 0.0 1.0 0.0
      vertex 1.0 0.0 0.0
    endloop
  endfacet
  facet normal -1.0 0.0 0.0
    outer loop
      vertex 0.0 0.0 0.0
      vertex 0.0 0.0 1.0
      vertex 0.0 1.0 0.0
    endloop
  endfacet
  facet normal 0.577 0.577 0.577
    outer loop
      vertex 1.0 0.0 0.0
      vertex 0.0 1.0 0.0
      vertex 0.0 0.0 1.0
    endloop
  endfacet
endsolid
```

See also:

```stl
 solid FLIRIS  
facet normal  0.955654E-01 -0.966960E+00  0.236339E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.675880E+01  0.442610E+01 -0.118893E+02
  vertex -0.335710E+01  0.442610E+01 -0.132648E+02
 endloop
endfacet
facet normal -0.350878E+00  0.349503E+00 -0.868753E+00
 outer loop
  vertex -0.675880E+01  0.442610E+01 -0.118893E+02
  vertex -0.634850E+01  0.666400E+01 -0.111547E+02
  vertex -0.315330E+01  0.666400E+01 -0.124452E+02
 endloop
endfacet
facet normal -0.351159E+00  0.350063E+00 -0.868414E+00
 outer loop
  vertex -0.315330E+01  0.666400E+01 -0.124451E+02
  vertex -0.335710E+01  0.442610E+01 -0.132648E+02
  vertex -0.675880E+01  0.442600E+01 -0.118893E+02
 endloop
endfacet
facet normal -0.220443E+00  0.806661E+00 -0.548363E+00
 outer loop
  vertex -0.634850E+01  0.666400E+01 -0.111547E+02
  vertex -0.434760E+01  0.962570E+01 -0.760230E+01
  vertex -0.215980E+01  0.962570E+01 -0.848180E+01
 endloop
endfacet
facet normal -0.221167E+00  0.806996E+00 -0.547578E+00
 outer loop
  vertex -0.215980E+01  0.962560E+01 -0.848180E+01
  vertex -0.315330E+01  0.666400E+01 -0.124452E+02
  vertex -0.634840E+01  0.666400E+01 -0.111547E+02
 endloop
endfacet
facet normal -0.300020E+00  0.478751E+00 -0.825097E+00
 outer loop
  vertex -0.434760E+01  0.962570E+01 -0.760230E+01
  vertex -0.403060E+01  0.119983E+02 -0.634090E+01
  vertex -0.201310E+01  0.119983E+02 -0.707450E+01
 endloop
endfacet
facet normal -0.323599E+00  0.497452E+00 -0.804876E+00
 outer loop
  vertex -0.201300E+01  0.119982E+02 -0.707450E+01
  vertex -0.215980E+01  0.962570E+01 -0.848180E+01
  vertex -0.434750E+01  0.962560E+01 -0.760230E+01
 endloop
endfacet
facet normal -0.256923E+00 -0.242035E+00 -0.935633E+00
 outer loop
  vertex -0.403060E+01  0.119983E+02 -0.634090E+01
  vertex -0.600750E+01  0.168341E+02 -0.704900E+01
  vertex -0.303770E+01  0.168341E+02 -0.786450E+01
 endloop
endfacet
facet normal -0.333357E+00 -0.220378E+00 -0.916682E+00
 outer loop
  vertex -0.303760E+01  0.168341E+02 -0.786450E+01
  vertex -0.201310E+01  0.119983E+02 -0.707450E+01
  vertex -0.403060E+01  0.119982E+02 -0.634080E+01
 endloop
endfacet
facet normal -0.194387E+00 -0.277062E+00 -0.940984E+00
 outer loop
  vertex -0.600750E+01  0.168341E+02 -0.704900E+01
  vertex -0.103064E+02  0.265168E+02 -0.901190E+01
  vertex -0.525940E+01  0.265168E+02 -0.100545E+02
 endloop
endfacet
facet normal -0.255093E+00 -0.268608E+00 -0.928858E+00
 outer loop
  vertex -0.525930E+01  0.265167E+02 -0.100544E+02
  vertex -0.303770E+01  0.168341E+02 -0.786450E+01
  vertex -0.600750E+01  0.168341E+02 -0.704890E+01
 endloop
endfacet
facet normal -0.172375E+00 -0.223705E+00 -0.959293E+00
 outer loop
  vertex -0.103064E+02  0.265168E+02 -0.901190E+01
  vertex -0.145267E+02  0.383280E+02 -0.110079E+02
  vertex -0.743950E+01  0.383280E+02 -0.122814E+02
 endloop
endfacet
facet normal -0.197513E+00 -0.216704E+00 -0.956048E+00
 outer loop
  vertex -0.743940E+01  0.383279E+02 -0.122813E+02
  vertex -0.525940E+01  0.265168E+02 -0.100545E+02
  vertex -0.103064E+02  0.265167E+02 -0.901180E+01
 endloop
endfacet
facet normal -0.175367E+00 -0.844403E-01 -0.980875E+00
 outer loop
  vertex -0.145267E+02  0.383280E+02 -0.110079E+02
  vertex -0.154644E+02  0.478155E+02 -0.116570E+02
  vertex -0.792130E+01  0.478155E+02 -0.130056E+02
 endloop
endfacet
facet normal -0.176234E+00 -0.838028E-01 -0.980775E+00
 outer loop
  vertex -0.792120E+01  0.478154E+02 -0.130055E+02
  vertex -0.743950E+01  0.383280E+02 -0.122814E+02
  vertex -0.145267E+02  0.383279E+02 -0.110079E+02
 endloop
endfacet
facet normal -0.190530E+00  0.301597E+00 -0.934204E+00
 outer loop
  vertex -0.154644E+02  0.478155E+02 -0.116570E+02
  vertex -0.123464E+02  0.528995E+02 -0.106516E+02
  vertex -0.630420E+01  0.528995E+02 -0.118839E+02
 endloop
endfacet
facet normal -0.169789E+00  0.263536E+00 -0.949590E+00
 outer loop
  vertex -0.630420E+01  0.528995E+02 -0.118838E+02
  vertex -0.792130E+01  0.478155E+02 -0.130056E+02
  vertex -0.154644E+02  0.478154E+02 -0.116569E+02
 endloop
endfacet
facet normal -0.180697E+00  0.716393E+00 -0.673891E+00
 outer loop
  vertex -0.123464E+02  0.528995E+02 -0.106516E+02
  vertex -0.816880E+01  0.551808E+02 -0.934660E+01
  vertex -0.413620E+01  0.551808E+02 -0.104279E+02
 endloop
endfacet
facet normal -0.154895E+00  0.631895E+00 -0.759419E+00
 outer loop
  vertex -0.413610E+01  0.551808E+02 -0.104279E+02
  vertex -0.630420E+01  0.528995E+02 -0.118839E+02
  vertex -0.123464E+02  0.528995E+02 -0.106515E+02
 endloop
endfacet
facet normal -0.258808E+00  0.636150E+00 -0.726864E+00
 outer loop
  vertex -0.816880E+01  0.551808E+02 -0.934660E+01
  vertex -0.588970E+01  0.564356E+02 -0.905990E+01
  vertex -0.294610E+01  0.564356E+02 -0.101080E+02
 endloop
endfacet
facet normal -0.232407E+00  0.441460E+00 -0.866660E+00
 outer loop
  vertex -0.294600E+01  0.564356E+02 -0.101079E+02
  vertex -0.413620E+01  0.551808E+02 -0.104279E+02
  vertex -0.816880E+01  0.551808E+02 -0.934650E+01
 endloop
endfacet
facet normal -0.327598E+00 -0.464498E+00 -0.822752E+00
 outer loop
  vertex -0.588970E+01  0.564356E+02 -0.905990E+01
  vertex -0.559100E+01  0.573210E+02 -0.967870E+01
  vertex -0.277880E+01  0.573211E+02 -0.107985E+02
 endloop
endfacet
facet normal -0.278507E+00 -0.557364E+00 -0.782163E+00
 outer loop
  vertex -0.277880E+01  0.573210E+02 -0.107985E+02
  vertex -0.294610E+01  0.564356E+02 -0.101080E+02
  vertex -0.588960E+01  0.564356E+02 -0.905990E+01
 endloop
endfacet
facet normal -0.227196E+00 -0.790831E+00 -0.568303E+00
 outer loop
  vertex -0.559100E+01  0.573210E+02 -0.967870E+01
  vertex -0.598540E+01  0.579599E+02 -0.104101E+02
  vertex -0.297300E+01  0.579599E+02 -0.116144E+02
 endloop
endfacet
facet normal -0.225602E+00 -0.792433E+00 -0.566704E+00
 outer loop
  vertex -0.297300E+01  0.579598E+02 -0.116143E+02
  vertex -0.277880E+01  0.573211E+02 -0.107985E+02
  vertex -0.559100E+01  0.573209E+02 -0.967870E+01
 endloop
endfacet
facet normal -0.304856E+00 -0.568274E+00 -0.764283E+00
 outer loop
  vertex -0.598540E+01  0.579599E+02 -0.104101E+02
  vertex -0.616270E+01  0.584363E+02 -0.106936E+02
  vertex -0.306100E+01  0.584363E+02 -0.119308E+02
 endloop
endfacet
facet normal -0.306202E+00 -0.565357E+00 -0.765906E+00
 outer loop
  vertex -0.306100E+01  0.584362E+02 -0.119308E+02
  vertex -0.297300E+01  0.579599E+02 -0.116144E+02
  vertex -0.598540E+01  0.579598E+02 -0.104100E+02
 endloop
endfacet
facet normal -0.287755E+00  0.631375E+00 -0.720113E+00
 outer loop
  vertex -0.616270E+01  0.584363E+02 -0.106936E+02
  vertex -0.602090E+01  0.587596E+02 -0.104668E+02
  vertex -0.299060E+01  0.587596E+02 -0.116777E+02
 endloop
endfacet
facet normal -0.288241E+00  0.628396E+00 -0.722520E+00
 outer loop
  vertex -0.299060E+01  0.587596E+02 -0.116777E+02
  vertex -0.306100E+01  0.584363E+02 -0.119308E+02
  vertex -0.616270E+01  0.584362E+02 -0.106935E+02
 endloop
endfacet
facet normal -0.795929E-01  0.976979E+00 -0.197931E+00
 outer loop
  vertex -0.602090E+01  0.587596E+02 -0.104668E+02
  vertex -0.557240E+01  0.589415E+02 -0.974930E+01
  vertex -0.276780E+01  0.589415E+02 -0.108771E+02
 endloop
endfacet
facet normal -0.797928E-01  0.976611E+00 -0.199660E+00
 outer loop
  vertex -0.276780E+01  0.589415E+02 -0.108770E+02
  vertex -0.299060E+01  0.587596E+02 -0.116777E+02
  vertex -0.602080E+01  0.587596E+02 -0.104667E+02
 endloop
endfacet
facet normal -0.633015E-01  0.985758E+00 -0.155804E+00
 outer loop
  vertex -0.557240E+01  0.589415E+02 -0.974930E+01
  vertex -0.497300E+01  0.591316E+02 -0.879010E+01
  vertex -0.247010E+01  0.591316E+02 -0.980700E+01
 endloop
endfacet
facet normal -0.632819E-01  0.985510E+00 -0.157369E+00
 outer loop
  vertex -0.247000E+01  0.591315E+02 -0.980700E+01
  vertex -0.276780E+01  0.589415E+02 -0.108771E+02
  vertex -0.557240E+01  0.589415E+02 -0.974930E+01
 endloop
endfacet
facet normal -0.160691E+00  0.906129E+00 -0.391292E+00
 outer loop
  vertex -0.497300E+01  0.591316E+02 -0.879010E+01
  vertex -0.447050E+01  0.595679E+02 -0.798610E+01
  vertex -0.222050E+01  0.595679E+02 -0.891010E+01
 endloop
endfacet
facet normal -0.160606E+00  0.904440E+00 -0.395213E+00
 outer loop
  vertex -0.222040E+01  0.595679E+02 -0.891000E+01
  vertex -0.247010E+01  0.591316E+02 -0.980700E+01
  vertex -0.497300E+01  0.591315E+02 -0.879010E+01
 endloop
endfacet
facet normal -0.333571E+00  0.486329E+00 -0.807598E+00
 outer loop
  vertex -0.447050E+01  0.595679E+02 -0.798610E+01
  vertex -0.422930E+01  0.603740E+02 -0.760030E+01
  vertex -0.210070E+01  0.603740E+02 -0.847950E+01
 endloop
endfacet
facet normal -0.332765E+00  0.482424E+00 -0.810268E+00
 outer loop
  vertex -0.210060E+01  0.603740E+02 -0.847940E+01
  vertex -0.222050E+01  0.595679E+02 -0.891010E+01
  vertex -0.447040E+01  0.595679E+02 -0.798610E+01
 endloop
endfacet
facet normal -0.379713E+00  0.116484E+00 -0.917741E+00
 outer loop
  vertex -0.422930E+01  0.603740E+02 -0.760030E+01
  vertex -0.416840E+01  0.613399E+02 -0.750290E+01
  vertex -0.207050E+01  0.613399E+02 -0.837090E+01
 endloop
endfacet
facet normal -0.379257E+00  0.115123E+00 -0.918102E+00
 outer loop
  vertex -0.207040E+01  0.613399E+02 -0.837090E+01
  vertex -0.210070E+01  0.603740E+02 -0.847950E+01
  vertex -0.422930E+01  0.603740E+02 -0.760020E+01
 endloop
endfacet
facet normal -0.380226E+00  0.105052E+00 -0.918908E+00
 outer loop
  vertex -0.416840E+01  0.613399E+02 -0.750290E+01
  vertex -0.412380E+01  0.622011E+02 -0.742290E+01
  vertex -0.204830E+01  0.622011E+02 -0.828170E+01
 endloop
endfacet
facet normal -0.380218E+00  0.104992E+00 -0.918918E+00
 outer loop
  vertex -0.204830E+01  0.622010E+02 -0.828170E+01
  vertex -0.207050E+01  0.613399E+02 -0.837090E+01
  vertex -0.416830E+01  0.613399E+02 -0.750290E+01
 endloop
endfacet
facet normal -0.115956E+00  0.952857E+00 -0.280389E+00
 outer loop
  vertex -0.412380E+01  0.622011E+02 -0.742290E+01
  vertex -0.322690E+01  0.627853E+02 -0.580850E+01
  vertex -0.160280E+01  0.627852E+02 -0.648050E+01
 endloop
endfacet
facet normal -0.116016E+00  0.952888E+00 -0.280258E+00
 outer loop
  vertex -0.160280E+01  0.627851E+02 -0.648050E+01
  vertex -0.204830E+01  0.622011E+02 -0.828170E+01
  vertex -0.412370E+01  0.622010E+02 -0.742290E+01
 endloop
endfacet
facet normal -0.123791E-01  0.999471E+00 -0.300667E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.160280E+01  0.627852E+02 -0.648050E+01
  vertex -0.322690E+01  0.627853E+02 -0.580840E+01
 endloop
endfacet
facet normal  0.279743E-01 -0.966946E+00  0.253442E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.335710E+01  0.442610E+01 -0.132648E+02
  vertex  0.308500E+00  0.442610E+01 -0.136694E+02
 endloop
endfacet
facet normal -0.102644E+00  0.350311E+00 -0.930992E+00
 outer loop
  vertex -0.335710E+01  0.442610E+01 -0.132648E+02
  vertex -0.315330E+01  0.666400E+01 -0.124452E+02
  vertex  0.289700E+00  0.666400E+01 -0.128248E+02
 endloop
endfacet
facet normal -0.102761E+00  0.350509E+00 -0.930905E+00
 outer loop
  vertex  0.289700E+00  0.666400E+01 -0.128247E+02
  vertex  0.308500E+00  0.442610E+01 -0.136694E+02
  vertex -0.335710E+01  0.442600E+01 -0.132648E+02
 endloop
endfacet
facet normal -0.643868E-01  0.807061E+00 -0.586947E+00
 outer loop
  vertex -0.315330E+01  0.666400E+01 -0.124452E+02
  vertex -0.215980E+01  0.962570E+01 -0.848180E+01
  vertex  0.198500E+00  0.962570E+01 -0.874050E+01
 endloop
endfacet
facet normal -0.647074E-01  0.807181E+00 -0.586747E+00
 outer loop
  vertex  0.198500E+00  0.962560E+01 -0.874050E+01
  vertex  0.289700E+00  0.666400E+01 -0.128248E+02
  vertex -0.315330E+01  0.666400E+01 -0.124451E+02
 endloop
endfacet
facet normal -0.839094E-01  0.512189E+00 -0.854764E+00
 outer loop
  vertex -0.215980E+01  0.962570E+01 -0.848180E+01
  vertex -0.201310E+01  0.119983E+02 -0.707450E+01
  vertex  0.185200E+00  0.119983E+02 -0.729030E+01
 endloop
endfacet
facet normal -0.932353E-01  0.518912E+00 -0.849728E+00
 outer loop
  vertex  0.185200E+00  0.119982E+02 -0.729020E+01
  vertex  0.198500E+00  0.962570E+01 -0.874050E+01
  vertex -0.215980E+01  0.962560E+01 -0.848180E+01
 endloop
endfacet
facet normal -0.709913E-01 -0.175454E+00 -0.981925E+00
 outer loop
  vertex -0.201310E+01  0.119983E+02 -0.707450E+01
  vertex -0.303770E+01  0.168341E+02 -0.786450E+01
  vertex  0.280500E+00  0.168341E+02 -0.810440E+01
 endloop
endfacet
facet normal -0.963815E-01 -0.163374E+00 -0.981845E+00
 outer loop
  vertex  0.280400E+00  0.168341E+02 -0.810430E+01
  vertex  0.185200E+00  0.119983E+02 -0.729030E+01
  vertex -0.201300E+01  0.119982E+02 -0.707450E+01
 endloop
endfacet
facet normal -0.518317E-01 -0.231607E+00 -0.971428E+00
 outer loop
  vertex -0.303770E+01  0.168341E+02 -0.786450E+01
  vertex -0.525940E+01  0.265168E+02 -0.100545E+02
  vertex  0.486900E+00  0.265168E+02 -0.103611E+02
 endloop
endfacet
facet normal -0.702630E-01 -0.225002E+00 -0.971821E+00
 outer loop
  vertex  0.486900E+00  0.265167E+02 -0.103611E+02
  vertex  0.280500E+00  0.168341E+02 -0.810440E+01
  vertex -0.303760E+01  0.168341E+02 -0.786450E+01
 endloop
endfacet
facet normal -0.451550E-01 -0.193130E+00 -0.980134E+00
 outer loop
  vertex -0.525940E+01  0.265168E+02 -0.100545E+02
  vertex -0.743950E+01  0.383280E+02 -0.122814E+02
  vertex  0.689400E+00  0.383280E+02 -0.126559E+02
 endloop
endfacet
facet normal -0.523285E-01 -0.189599E+00 -0.980466E+00
 outer loop
  vertex  0.689400E+00  0.383279E+02 -0.126559E+02
  vertex  0.486900E+00  0.265168E+02 -0.103611E+02
  vertex -0.525930E+01  0.265167E+02 -0.100544E+02
 endloop
endfacet
facet normal -0.456324E-01 -0.783351E-01 -0.995882E+00
 outer loop
  vertex -0.743950E+01  0.383280E+02 -0.122814E+02
  vertex -0.792130E+01  0.478155E+02 -0.130056E+02
  vertex  0.734100E+00  0.478155E+02 -0.134022E+02
 endloop
endfacet
facet normal -0.458926E-01 -0.781125E-01 -0.995888E+00
 outer loop
  vertex  0.734000E+00  0.478154E+02 -0.134021E+02
  vertex  0.689400E+00  0.383280E+02 -0.126559E+02
  vertex -0.743940E+01  0.383279E+02 -0.122813E+02
 endloop
endfacet
facet normal -0.511247E-01  0.230649E+00 -0.971693E+00
 outer loop
  vertex -0.792130E+01  0.478155E+02 -0.130056E+02
  vertex -0.630420E+01  0.528995E+02 -0.118839E+02
  vertex  0.583700E+00  0.528995E+02 -0.122463E+02
 endloop
endfacet
facet normal -0.446634E-01  0.220243E+00 -0.974422E+00
 outer loop
  vertex  0.583700E+00  0.528995E+02 -0.122462E+02
  vertex  0.734100E+00  0.478155E+02 -0.134022E+02
  vertex -0.792120E+01  0.478154E+02 -0.130055E+02
 endloop
endfacet
facet normal -0.574291E-01  0.575318E+00 -0.815911E+00
 outer loop
  vertex -0.630420E+01  0.528995E+02 -0.118839E+02
  vertex -0.413620E+01  0.551808E+02 -0.104279E+02
  vertex  0.382100E+00  0.551807E+02 -0.107460E+02
 endloop
endfacet
facet normal -0.440217E-01  0.546256E+00 -0.836461E+00
 outer loop
  vertex  0.382000E+00  0.551806E+02 -0.107460E+02
  vertex  0.583700E+00  0.528995E+02 -0.122463E+02
  vertex -0.630420E+01  0.528995E+02 -0.118838E+02
 endloop
endfacet
facet normal -0.901940E-01  0.325502E+00 -0.941230E+00
 outer loop
  vertex -0.413620E+01  0.551808E+02 -0.104279E+02
  vertex -0.294610E+01  0.564356E+02 -0.101080E+02
  vertex  0.271200E+00  0.564356E+02 -0.104163E+02
 endloop
endfacet
facet normal -0.680314E-01  0.247962E+00 -0.966378E+00
 outer loop
  vertex  0.271200E+00  0.564356E+02 -0.104162E+02
  vertex  0.382100E+00  0.551807E+02 -0.107460E+02
  vertex -0.413610E+01  0.551808E+02 -0.104279E+02
 endloop
endfacet
facet normal -0.861158E-01 -0.602475E+00 -0.793479E+00
 outer loop
  vertex -0.294610E+01  0.564356E+02 -0.101080E+02
  vertex -0.277880E+01  0.573211E+02 -0.107985E+02
  vertex  0.255400E+00  0.573211E+02 -0.111278E+02
 endloop
endfacet
facet normal -0.744573E-01 -0.625416E+00 -0.776731E+00
 outer loop
  vertex  0.255400E+00  0.573210E+02 -0.111277E+02
  vertex  0.271200E+00  0.564356E+02 -0.104163E+02
  vertex -0.294600E+01  0.564356E+02 -0.101079E+02
 endloop
endfacet
facet normal -0.660490E-01 -0.793229E+00 -0.605331E+00
 outer loop
  vertex -0.277880E+01  0.573211E+02 -0.107985E+02
  vertex -0.297300E+01  0.579599E+02 -0.116144E+02
  vertex  0.273200E+00  0.579599E+02 -0.119686E+02
 endloop
endfacet
facet normal -0.655776E-01 -0.793918E+00 -0.604478E+00
 outer loop
  vertex  0.273200E+00  0.579598E+02 -0.119686E+02
  vertex  0.255400E+00  0.573211E+02 -0.111278E+02
  vertex -0.277880E+01  0.573210E+02 -0.107985E+02
 endloop
endfacet
facet normal -0.894699E-01 -0.562445E+00 -0.821980E+00
 outer loop
  vertex -0.297300E+01  0.579599E+02 -0.116144E+02
  vertex -0.306100E+01  0.584363E+02 -0.119308E+02
  vertex  0.281300E+00  0.584363E+02 -0.122946E+02
 endloop
endfacet
facet normal -0.897724E-01 -0.561377E+00 -0.822677E+00
 outer loop
  vertex  0.281300E+00  0.584362E+02 -0.122945E+02
  vertex  0.273200E+00  0.579599E+02 -0.119686E+02
  vertex -0.297300E+01  0.579598E+02 -0.116143E+02
 endloop
endfacet
facet normal -0.845774E-01  0.625575E+00 -0.775566E+00
 outer loop
  vertex -0.306100E+01  0.584363E+02 -0.119308E+02
  vertex -0.299060E+01  0.587596E+02 -0.116777E+02
  vertex  0.274800E+00  0.587596E+02 -0.120338E+02
 endloop
endfacet
facet normal -0.845245E-01  0.624579E+00 -0.776374E+00
 outer loop
  vertex  0.274800E+00  0.587596E+02 -0.120338E+02
  vertex  0.281300E+00  0.584363E+02 -0.122946E+02
  vertex -0.306100E+01  0.584362E+02 -0.119308E+02
 endloop
endfacet
facet normal -0.236313E-01  0.976276E+00 -0.215238E+00
 outer loop
  vertex -0.299060E+01  0.587596E+02 -0.116777E+02
  vertex -0.276780E+01  0.589415E+02 -0.108771E+02
  vertex  0.254300E+00  0.589415E+02 -0.112089E+02
 endloop
endfacet
facet normal -0.235378E-01  0.976145E+00 -0.215839E+00
 outer loop
  vertex  0.254200E+00  0.589415E+02 -0.112089E+02
  vertex  0.274800E+00  0.587596E+02 -0.120338E+02
  vertex -0.299060E+01  0.587596E+02 -0.116777E+02
 endloop
endfacet
facet normal -0.188297E-01  0.985299E+00 -0.169795E+00
 outer loop
  vertex -0.276780E+01  0.589415E+02 -0.108771E+02
  vertex -0.247010E+01  0.591316E+02 -0.980700E+01
  vertex  0.227000E+00  0.591316E+02 -0.101061E+02
 endloop
endfacet
facet normal -0.186929E-01  0.985231E+00 -0.170207E+00
 outer loop
  vertex  0.226900E+00  0.591315E+02 -0.101061E+02
  vertex  0.254300E+00  0.589415E+02 -0.112089E+02
  vertex -0.276780E+01  0.589415E+02 -0.108770E+02
 endloop
endfacet
facet normal -0.477579E-01  0.903384E+00 -0.426165E+00
 outer loop
  vertex -0.247010E+01  0.591316E+02 -0.980700E+01
  vertex -0.222050E+01  0.595679E+02 -0.891010E+01
  vertex  0.204000E+00  0.595679E+02 -0.918180E+01
 endloop
endfacet
facet normal -0.474233E-01  0.902856E+00 -0.427319E+00
 outer loop
  vertex  0.203900E+00  0.595679E+02 -0.918170E+01
  vertex  0.227000E+00  0.591316E+02 -0.101061E+02
  vertex -0.247000E+01  0.591315E+02 -0.980700E+01
 endloop
endfacet
facet normal -0.983083E-01  0.480213E+00 -0.871625E+00
 outer loop
  vertex -0.222050E+01  0.595679E+02 -0.891010E+01
  vertex -0.210070E+01  0.603740E+02 -0.847950E+01
  vertex  0.193000E+00  0.603740E+02 -0.873820E+01
 endloop
endfacet
facet normal -0.978123E-01  0.478787E+00 -0.872465E+00
 outer loop
  vertex  0.193000E+00  0.603740E+02 -0.873820E+01
  vertex  0.204000E+00  0.595679E+02 -0.918180E+01
  vertex -0.222040E+01  0.595679E+02 -0.891000E+01
 endloop
endfacet
facet normal -0.111478E+00  0.114475E+00 -0.987152E+00
 outer loop
  vertex -0.210070E+01  0.603740E+02 -0.847950E+01
  vertex -0.207050E+01  0.613399E+02 -0.837090E+01
  vertex  0.190200E+00  0.613399E+02 -0.862620E+01
 endloop
endfacet
facet normal -0.111390E+00  0.114248E+00 -0.987188E+00
 outer loop
  vertex  0.190200E+00  0.613399E+02 -0.862610E+01
  vertex  0.193000E+00  0.603740E+02 -0.873820E+01
  vertex -0.210060E+01  0.603740E+02 -0.847940E+01
 endloop
endfacet
facet normal -0.111564E+00  0.105227E+00 -0.988170E+00
 outer loop
  vertex -0.207050E+01  0.613399E+02 -0.837090E+01
  vertex -0.204830E+01  0.622011E+02 -0.828170E+01
  vertex  0.188200E+00  0.622011E+02 -0.853420E+01
 endloop
endfacet
facet normal -0.111596E+00  0.105417E+00 -0.988147E+00
 outer loop
  vertex  0.188100E+00  0.622010E+02 -0.853410E+01
  vertex  0.190200E+00  0.613399E+02 -0.862620E+01
  vertex -0.207040E+01  0.613399E+02 -0.837090E+01
 endloop
endfacet
facet normal -0.339495E-01  0.953119E+00 -0.300684E+00
 outer loop
  vertex -0.204830E+01  0.622011E+02 -0.828170E+01
  vertex -0.160280E+01  0.627852E+02 -0.648050E+01
  vertex  0.147300E+00  0.627852E+02 -0.667810E+01
 endloop
endfacet
facet normal -0.339844E-01  0.953132E+00 -0.300640E+00
 outer loop
  vertex  0.147300E+00  0.627851E+02 -0.667810E+01
  vertex  0.188200E+00  0.622011E+02 -0.853420E+01
  vertex -0.204830E+01  0.622010E+02 -0.828170E+01
 endloop
endfacet
facet normal -0.369562E-02  0.999474E+00 -0.322297E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.147300E+00  0.627852E+02 -0.667810E+01
  vertex -0.160280E+01  0.627851E+02 -0.648050E+01
 endloop
endfacet
facet normal -0.391839E-01 -0.966952E+00  0.251928E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.308500E+00  0.442610E+01 -0.136694E+02
  vertex  0.395010E+01  0.442610E+01 -0.131030E+02
 endloop
endfacet
facet normal  0.143774E+00  0.350486E+00 -0.925467E+00
 outer loop
  vertex  0.308500E+00  0.442610E+01 -0.136694E+02
  vertex  0.289700E+00  0.666400E+01 -0.128248E+02
  vertex  0.371030E+01  0.666400E+01 -0.122934E+02
 endloop
endfacet
facet normal  0.143937E+00  0.350293E+00 -0.925515E+00
 outer loop
  vertex  0.371020E+01  0.666400E+01 -0.122933E+02
  vertex  0.395010E+01  0.442610E+01 -0.131030E+02
  vertex  0.308400E+00  0.442600E+01 -0.136694E+02
 endloop
endfacet
facet normal  0.901839E-01  0.807213E+00 -0.583331E+00
 outer loop
  vertex  0.289700E+00  0.666400E+01 -0.128248E+02
  vertex  0.198500E+00  0.962570E+01 -0.874050E+01
  vertex  0.254130E+01  0.962570E+01 -0.837830E+01
 endloop
endfacet
facet normal  0.906231E-01  0.807080E+00 -0.583446E+00
 outer loop
  vertex  0.254130E+01  0.962560E+01 -0.837820E+01
  vertex  0.371030E+01  0.666400E+01 -0.122934E+02
  vertex  0.289700E+00  0.666400E+01 -0.128247E+02
 endloop
endfacet
facet normal  0.117276E+00  0.518403E+00 -0.847057E+00
 outer loop
  vertex  0.198500E+00  0.962570E+01 -0.874050E+01
  vertex  0.185200E+00  0.119983E+02 -0.729030E+01
  vertex  0.236720E+01  0.119983E+02 -0.698820E+01
 endloop
endfacet
facet normal  0.131554E+00  0.508316E+00 -0.851063E+00
 outer loop
  vertex  0.236710E+01  0.119982E+02 -0.698820E+01
  vertex  0.254130E+01  0.962570E+01 -0.837830E+01
  vertex  0.198500E+00  0.962560E+01 -0.874050E+01
 endloop
endfacet
facet normal  0.100211E+00 -0.167097E+00 -0.980835E+00
 outer loop
  vertex  0.185200E+00  0.119983E+02 -0.729030E+01
  vertex  0.280500E+00  0.168341E+02 -0.810440E+01
  vertex  0.356720E+01  0.168341E+02 -0.776860E+01
 endloop
endfacet
facet normal  0.134601E+00 -0.190312E+00 -0.972452E+00
 outer loop
  vertex  0.356710E+01  0.168341E+02 -0.776850E+01
  vertex  0.236720E+01  0.119983E+02 -0.698820E+01
  vertex  0.185200E+00  0.119982E+02 -0.729020E+01
 endloop
endfacet
facet normal  0.733477E-01 -0.227853E+00 -0.970929E+00
 outer loop
  vertex  0.280500E+00  0.168341E+02 -0.810440E+01
  vertex  0.486900E+00  0.265168E+02 -0.103611E+02
  vertex  0.616970E+01  0.265168E+02 -0.993180E+01
 endloop
endfacet
facet normal  0.985837E-01 -0.242129E+00 -0.965223E+00
 outer loop
  vertex  0.616970E+01  0.265167E+02 -0.993170E+01
  vertex  0.356720E+01  0.168341E+02 -0.776860E+01
  vertex  0.280400E+00  0.168341E+02 -0.810430E+01
 endloop
endfacet
facet normal  0.639146E-01 -0.191390E+00 -0.979431E+00
 outer loop
  vertex  0.486900E+00  0.265168E+02 -0.103611E+02
  vertex  0.689400E+00  0.383280E+02 -0.126559E+02
  vertex  0.872380E+01  0.383280E+02 -0.121316E+02
 endloop
endfacet
facet normal  0.738411E-01 -0.198009E+00 -0.977415E+00
 outer loop
  vertex  0.872370E+01  0.383279E+02 -0.121316E+02
  vertex  0.616970E+01  0.265168E+02 -0.993180E+01
  vertex  0.486900E+00  0.265167E+02 -0.103611E+02
 endloop
endfacet
facet normal  0.645774E-01 -0.785578E-01 -0.994816E+00
 outer loop
  vertex  0.689400E+00  0.383280E+02 -0.126559E+02
  vertex  0.734100E+00  0.478155E+02 -0.134022E+02
  vertex  0.928850E+01  0.478155E+02 -0.128469E+02
 endloop
endfacet
facet normal  0.649166E-01 -0.788531E-01 -0.994770E+00
 outer loop
  vertex  0.928840E+01  0.478154E+02 -0.128468E+02
  vertex  0.872380E+01  0.383280E+02 -0.121316E+02
  vertex  0.689400E+00  0.383279E+02 -0.126559E+02
 endloop
endfacet
facet normal  0.724157E-01  0.223157E+00 -0.972089E+00
 outer loop
  vertex  0.734100E+00  0.478155E+02 -0.134022E+02
  vertex  0.583700E+00  0.528995E+02 -0.122463E+02
  vertex  0.739490E+01  0.528995E+02 -0.117389E+02
 endloop
endfacet
facet normal  0.629512E-01  0.234847E+00 -0.969992E+00
 outer loop
  vertex  0.739480E+01  0.528995E+02 -0.117389E+02
  vertex  0.928850E+01  0.478155E+02 -0.128469E+02
  vertex  0.734000E+00  0.478154E+02 -0.134021E+02
 endloop
endfacet
facet normal  0.825211E-01  0.552698E+00 -0.829286E+00
 outer loop
  vertex  0.583700E+00  0.528995E+02 -0.122463E+02
  vertex  0.382100E+00  0.551807E+02 -0.107460E+02
  vertex  0.485640E+01  0.551808E+02 -0.103007E+02
 endloop
endfacet
facet normal  0.605239E-01  0.579646E+00 -0.812618E+00
 outer loop
  vertex  0.485640E+01  0.551808E+02 -0.103007E+02
  vertex  0.739490E+01  0.528995E+02 -0.117389E+02
  vertex  0.583700E+00  0.528995E+02 -0.122462E+02
 endloop
endfacet
facet normal  0.129266E+00  0.262645E+00 -0.956195E+00
 outer loop
  vertex  0.382100E+00  0.551807E+02 -0.107460E+02
  vertex  0.271200E+00  0.564356E+02 -0.104163E+02
  vertex  0.346380E+01  0.564356E+02 -0.998470E+01
 endloop
endfacet
facet normal  0.931486E-01  0.339131E+00 -0.936116E+00
 outer loop
  vertex  0.346370E+01  0.564356E+02 -0.998470E+01
  vertex  0.485640E+01  0.551808E+02 -0.103007E+02
  vertex  0.382000E+00  0.551806E+02 -0.107460E+02
 endloop
endfacet
facet normal  0.118545E+00 -0.620656E+00 -0.775070E+00
 outer loop
  vertex  0.271200E+00  0.564356E+02 -0.104163E+02
  vertex  0.255400E+00  0.573211E+02 -0.111278E+02
  vertex  0.326950E+01  0.573211E+02 -0.106668E+02
 endloop
endfacet
facet normal  0.107977E+00 -0.591682E+00 -0.798907E+00
 outer loop
  vertex  0.326950E+01  0.573210E+02 -0.106667E+02
  vertex  0.346380E+01  0.564356E+02 -0.998470E+01
  vertex  0.271200E+00  0.564356E+02 -0.104162E+02
 endloop
endfacet
facet normal  0.924339E-01 -0.793789E+00 -0.601128E+00
 outer loop
  vertex  0.255400E+00  0.573211E+02 -0.111278E+02
  vertex  0.273200E+00  0.579599E+02 -0.119686E+02
  vertex  0.349820E+01  0.579599E+02 -0.114727E+02
 endloop
endfacet
facet normal  0.921262E-01 -0.792938E+00 -0.602297E+00
 outer loop
  vertex  0.349810E+01  0.579598E+02 -0.114727E+02
  vertex  0.326950E+01  0.573211E+02 -0.106668E+02
  vertex  0.255400E+00  0.573210E+02 -0.111277E+02
 endloop
endfacet
facet normal  0.125456E+00 -0.561724E+00 -0.817757E+00
 outer loop
  vertex  0.273200E+00  0.579599E+02 -0.119686E+02
  vertex  0.281300E+00  0.584363E+02 -0.122946E+02
  vertex  0.360170E+01  0.584363E+02 -0.117852E+02
 endloop
endfacet
facet normal  0.125606E+00 -0.563161E+00 -0.816745E+00
 outer loop
  vertex  0.360170E+01  0.584362E+02 -0.117852E+02
  vertex  0.349820E+01  0.579599E+02 -0.114727E+02
  vertex  0.273200E+00  0.579598E+02 -0.119686E+02
 endloop
endfacet
facet normal  0.118601E+00  0.624868E+00 -0.771669E+00
 outer loop
  vertex  0.281300E+00  0.584363E+02 -0.122946E+02
  vertex  0.274800E+00  0.587596E+02 -0.120338E+02
  vertex  0.351890E+01  0.587596E+02 -0.115352E+02
 endloop
endfacet
facet normal  0.118186E+00  0.626216E+00 -0.770640E+00
 outer loop
  vertex  0.351880E+01  0.587596E+02 -0.115352E+02
  vertex  0.360170E+01  0.584363E+02 -0.117852E+02
  vertex  0.281300E+00  0.584362E+02 -0.122945E+02
 endloop
endfacet
facet normal  0.331667E-01  0.976175E+00 -0.214434E+00
 outer loop
  vertex  0.274800E+00  0.587596E+02 -0.120338E+02
  vertex  0.254300E+00  0.589415E+02 -0.112089E+02
  vertex  0.325680E+01  0.589415E+02 -0.107445E+02
 endloop
endfacet
facet normal  0.328468E-01  0.976344E+00 -0.213715E+00
 outer loop
  vertex  0.325670E+01  0.589415E+02 -0.107445E+02
  vertex  0.351890E+01  0.587596E+02 -0.115352E+02
  vertex  0.274800E+00  0.587596E+02 -0.120338E+02
 endloop
endfacet
facet normal  0.264367E-01  0.985231E+00 -0.169177E+00
 outer loop
  vertex  0.254300E+00  0.589415E+02 -0.112089E+02
  vertex  0.227000E+00  0.591316E+02 -0.101061E+02
  vertex  0.290640E+01  0.591316E+02 -0.968740E+01
 endloop
endfacet
facet normal  0.260536E-01  0.985366E+00 -0.168451E+00
 outer loop
  vertex  0.290630E+01  0.591315E+02 -0.968730E+01
  vertex  0.325680E+01  0.589415E+02 -0.107445E+02
  vertex  0.254200E+00  0.589415E+02 -0.112089E+02
 endloop
endfacet
facet normal  0.670441E-01  0.902922E+00 -0.424543E+00
 outer loop
  vertex  0.227000E+00  0.591316E+02 -0.101061E+02
  vertex  0.204000E+00  0.595679E+02 -0.918180E+01
  vertex  0.261280E+01  0.595679E+02 -0.880140E+01
 endloop
endfacet
facet normal  0.660803E-01  0.903671E+00 -0.423099E+00
 outer loop
  vertex  0.261270E+01  0.595679E+02 -0.880140E+01
  vertex  0.290640E+01  0.591316E+02 -0.968740E+01
  vertex  0.226900E+00  0.591315E+02 -0.101061E+02
 endloop
endfacet
facet normal  0.137759E+00  0.478969E+00 -0.866955E+00
 outer loop
  vertex  0.204000E+00  0.595679E+02 -0.918180E+01
  vertex  0.193000E+00  0.603740E+02 -0.873820E+01
  vertex  0.247180E+01  0.603740E+02 -0.837610E+01
 endloop
endfacet
facet normal  0.136722E+00  0.480940E+00 -0.866027E+00
 outer loop
  vertex  0.247180E+01  0.603740E+02 -0.837600E+01
  vertex  0.261280E+01  0.595679E+02 -0.880140E+01
  vertex  0.203900E+00  0.595679E+02 -0.918170E+01
 endloop
endfacet
facet normal  0.156122E+00  0.114217E+00 -0.981112E+00
 outer loop
  vertex  0.193000E+00  0.603740E+02 -0.873820E+01
  vertex  0.190200E+00  0.613399E+02 -0.862620E+01
  vertex  0.243620E+01  0.613399E+02 -0.826880E+01
 endloop
endfacet
facet normal  0.155892E+00  0.114849E+00 -0.981075E+00
 outer loop
  vertex  0.243610E+01  0.613399E+02 -0.826870E+01
  vertex  0.247180E+01  0.603740E+02 -0.837610E+01
  vertex  0.193000E+00  0.603740E+02 -0.873820E+01
 endloop
endfacet
facet normal  0.156292E+00  0.105277E+00 -0.982084E+00
 outer loop
  vertex  0.190200E+00  0.613399E+02 -0.862620E+01
  vertex  0.188200E+00  0.622011E+02 -0.853420E+01
  vertex  0.241010E+01  0.622011E+02 -0.818060E+01
 endloop
endfacet
facet normal  0.156233E+00  0.105345E+00 -0.982086E+00
 outer loop
  vertex  0.241000E+01  0.622010E+02 -0.818060E+01
  vertex  0.243620E+01  0.613399E+02 -0.826880E+01
  vertex  0.190200E+00  0.613399E+02 -0.862610E+01
 endloop
endfacet
facet normal  0.475679E-01  0.953103E+00 -0.298885E+00
 outer loop
  vertex  0.188200E+00  0.622011E+02 -0.853420E+01
  vertex  0.147300E+00  0.627852E+02 -0.667810E+01
  vertex  0.188590E+01  0.627852E+02 -0.640140E+01
 endloop
endfacet
facet normal  0.475021E-01  0.953116E+00 -0.298853E+00
 outer loop
  vertex  0.188590E+01  0.627851E+02 -0.640140E+01
  vertex  0.241010E+01  0.622011E+02 -0.818060E+01
  vertex  0.188100E+00  0.622010E+02 -0.853410E+01
 endloop
endfacet
facet normal  0.504405E-02  0.999474E+00 -0.320518E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.188590E+01  0.627852E+02 -0.640140E+01
  vertex  0.147300E+00  0.627851E+02 -0.667810E+01
 endloop
endfacet
facet normal -0.106871E+00 -0.966942E+00  0.231520E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.395010E+01  0.442610E+01 -0.131030E+02
  vertex  0.728000E+01  0.442610E+01 -0.115659E+02
 endloop
endfacet
facet normal  0.392257E+00  0.349805E+00 -0.850747E+00
 outer loop
  vertex  0.395010E+01  0.442610E+01 -0.131030E+02
  vertex  0.371030E+01  0.666400E+01 -0.122934E+02
  vertex  0.683800E+01  0.666400E+01 -0.108513E+02
 endloop
endfacet
facet normal  0.392678E+00  0.349244E+00 -0.850783E+00
 outer loop
  vertex  0.683790E+01  0.666400E+01 -0.108513E+02
  vertex  0.728000E+01  0.442610E+01 -0.115659E+02
  vertex  0.395000E+01  0.442600E+01 -0.131029E+02
 endloop
endfacet
facet normal  0.246384E+00  0.806905E+00 -0.536841E+00
 outer loop
  vertex  0.371030E+01  0.666400E+01 -0.122934E+02
  vertex  0.254130E+01  0.962570E+01 -0.837830E+01
  vertex  0.468270E+01  0.962570E+01 -0.739550E+01
 endloop
endfacet
facet normal  0.247503E+00  0.806556E+00 -0.536852E+00
 outer loop
  vertex  0.468270E+01  0.962560E+01 -0.739550E+01
  vertex  0.683800E+01  0.666400E+01 -0.108513E+02
  vertex  0.371020E+01  0.666400E+01 -0.122933E+02
 endloop
endfacet
facet normal  0.334166E+00  0.494595E+00 -0.802315E+00
 outer loop
  vertex  0.254130E+01  0.962570E+01 -0.837830E+01
  vertex  0.236720E+01  0.119983E+02 -0.698820E+01
  vertex  0.433550E+01  0.119983E+02 -0.616840E+01
 endloop
endfacet
facet normal  0.368326E+00  0.469106E+00 -0.802668E+00
 outer loop
  vertex  0.433540E+01  0.119982E+02 -0.616830E+01
  vertex  0.468270E+01  0.962570E+01 -0.739550E+01
  vertex  0.254130E+01  0.962560E+01 -0.837820E+01
 endloop
endfacet
facet normal  0.294546E+00 -0.223052E+00 -0.929242E+00
 outer loop
  vertex  0.236720E+01  0.119983E+02 -0.698820E+01
  vertex  0.356720E+01  0.168341E+02 -0.776860E+01
  vertex  0.644220E+01  0.168341E+02 -0.685730E+01
 endloop
endfacet
facet normal  0.368369E+00 -0.286457E+00 -0.884447E+00
 outer loop
  vertex  0.644220E+01  0.168341E+02 -0.685720E+01
  vertex  0.433550E+01  0.119983E+02 -0.616840E+01
  vertex  0.236710E+01  0.119982E+02 -0.698820E+01
 endloop
endfacet
facet normal  0.224627E+00 -0.269578E+00 -0.936414E+00
 outer loop
  vertex  0.356720E+01  0.168341E+02 -0.776860E+01
  vertex  0.616970E+01  0.265168E+02 -0.993180E+01
  vertex  0.110267E+02  0.265168E+02 -0.876670E+01
 endloop
endfacet
facet normal  0.286813E+00 -0.314251E+00 -0.904978E+00
 outer loop
  vertex  0.110267E+02  0.265167E+02 -0.876660E+01
  vertex  0.644220E+01  0.168341E+02 -0.685730E+01
  vertex  0.356710E+01  0.168341E+02 -0.776850E+01
 endloop
endfacet
facet normal  0.199676E+00 -0.220974E+00 -0.954620E+00
 outer loop
  vertex  0.616970E+01  0.265168E+02 -0.993180E+01
  vertex  0.872380E+01  0.383280E+02 -0.121316E+02
  vertex  0.155279E+02  0.383280E+02 -0.107084E+02
 endloop
endfacet
facet normal  0.226352E+00 -0.241387E+00 -0.943662E+00
 outer loop
  vertex  0.155278E+02  0.383279E+02 -0.107083E+02
  vertex  0.110267E+02  0.265168E+02 -0.876670E+01
  vertex  0.616970E+01  0.265167E+02 -0.993170E+01
 endloop
endfacet
facet normal  0.203022E+00 -0.856249E-01 -0.975423E+00
 outer loop
  vertex  0.872380E+01  0.383280E+02 -0.121316E+02
  vertex  0.928850E+01  0.478155E+02 -0.128469E+02
  vertex  0.165294E+02  0.478155E+02 -0.113398E+02
 endloop
endfacet
facet normal  0.203970E+00 -0.864168E-01 -0.975156E+00
 outer loop
  vertex  0.165293E+02  0.478154E+02 -0.113397E+02
  vertex  0.155279E+02  0.383280E+02 -0.107084E+02
  vertex  0.872370E+01  0.383279E+02 -0.121316E+02
 endloop
endfacet
facet normal  0.220945E+00  0.285533E+00 -0.932553E+00
 outer loop
  vertex  0.928850E+01  0.478155E+02 -0.128469E+02
  vertex  0.739490E+01  0.528995E+02 -0.117389E+02
  vertex  0.132073E+02  0.528995E+02 -0.103618E+02
 endloop
endfacet
facet normal  0.193974E+00  0.306046E+00 -0.932046E+00
 outer loop
  vertex  0.132073E+02  0.528995E+02 -0.103618E+02
  vertex  0.165294E+02  0.478155E+02 -0.113398E+02
  vertex  0.928840E+01  0.478154E+02 -0.128468E+02
 endloop
endfacet
facet normal  0.216545E+00  0.681598E+00 -0.698951E+00
 outer loop
  vertex  0.739490E+01  0.528995E+02 -0.117389E+02
  vertex  0.485640E+01  0.551808E+02 -0.103007E+02
  vertex  0.875680E+01  0.551808E+02 -0.909230E+01
 endloop
endfacet
facet normal  0.163730E+00  0.703993E+00 -0.691076E+00
 outer loop
  vertex  0.875670E+01  0.551808E+02 -0.909230E+01
  vertex  0.132073E+02  0.528995E+02 -0.103618E+02
  vertex  0.739480E+01  0.528995E+02 -0.117389E+02
 endloop
endfacet
facet normal  0.316529E+00  0.546538E+00 -0.775310E+00
 outer loop
  vertex  0.485640E+01  0.551808E+02 -0.103007E+02
  vertex  0.346380E+01  0.564356E+02 -0.998470E+01
  vertex  0.633280E+01  0.564356E+02 -0.881340E+01
 endloop
endfacet
facet normal  0.232892E+00  0.616997E+00 -0.751715E+00
 outer loop
  vertex  0.633270E+01  0.564356E+02 -0.881340E+01
  vertex  0.875680E+01  0.551808E+02 -0.909230E+01
  vertex  0.485640E+01  0.551808E+02 -0.103007E+02
 endloop
endfacet
facet normal  0.353338E+00 -0.520989E+00 -0.776996E+00
 outer loop
  vertex  0.346380E+01  0.564356E+02 -0.998470E+01
  vertex  0.326950E+01  0.573211E+02 -0.106668E+02
  vertex  0.602120E+01  0.573210E+02 -0.941540E+01
 endloop
endfacet
facet normal  0.338544E+00 -0.444645E+00 -0.829264E+00
 outer loop
  vertex  0.602120E+01  0.573209E+02 -0.941530E+01
  vertex  0.633280E+01  0.564356E+02 -0.881340E+01
  vertex  0.346370E+01  0.564356E+02 -0.998470E+01
 endloop
endfacet
facet normal  0.253611E+00 -0.791793E+00 -0.555649E+00
 outer loop
  vertex  0.326950E+01  0.573211E+02 -0.106668E+02
  vertex  0.349820E+01  0.579599E+02 -0.114727E+02
  vertex  0.644700E+01  0.579599E+02 -0.101268E+02
 endloop
endfacet
facet normal  0.253669E+00 -0.790234E+00 -0.557837E+00
 outer loop
  vertex  0.644700E+01  0.579598E+02 -0.101267E+02
  vertex  0.602120E+01  0.573210E+02 -0.941540E+01
  vertex  0.326950E+01  0.573210E+02 -0.106667E+02
 endloop
endfacet
facet normal  0.341561E+00 -0.566260E+00 -0.750124E+00
 outer loop
  vertex  0.349820E+01  0.579599E+02 -0.114727E+02
  vertex  0.360170E+01  0.584363E+02 -0.117852E+02
  vertex  0.663790E+01  0.584363E+02 -0.104027E+02
 endloop
endfacet
facet normal  0.341237E+00 -0.569760E+00 -0.747617E+00
 outer loop
  vertex  0.663780E+01  0.584362E+02 -0.104027E+02
  vertex  0.644700E+01  0.579599E+02 -0.101268E+02
  vertex  0.349810E+01  0.579598E+02 -0.114727E+02
 endloop
endfacet
facet normal  0.322572E+00  0.629334E+00 -0.707026E+00
 outer loop
  vertex  0.360170E+01  0.584363E+02 -0.117852E+02
  vertex  0.351890E+01  0.587596E+02 -0.115352E+02
  vertex  0.648510E+01  0.587595E+02 -0.101820E+02
 endloop
endfacet
facet normal  0.320778E+00  0.633042E+00 -0.704528E+00
 outer loop
  vertex  0.648500E+01  0.587594E+02 -0.101820E+02
  vertex  0.663790E+01  0.584363E+02 -0.104027E+02
  vertex  0.360170E+01  0.584362E+02 -0.117852E+02
 endloop
endfacet
facet normal  0.895387E-01  0.976706E+00 -0.195010E+00
 outer loop
  vertex  0.351890E+01  0.587596E+02 -0.115352E+02
  vertex  0.325680E+01  0.589415E+02 -0.107445E+02
  vertex  0.600210E+01  0.589415E+02 -0.948400E+01
 endloop
endfacet
facet normal  0.883612E-01  0.977090E+00 -0.193619E+00
 outer loop
  vertex  0.600200E+01  0.589415E+02 -0.948400E+01
  vertex  0.648510E+01  0.587595E+02 -0.101820E+02
  vertex  0.351880E+01  0.587596E+02 -0.115352E+02
 endloop
endfacet
facet normal  0.712520E-01  0.985559E+00 -0.153614E+00
 outer loop
  vertex  0.325680E+01  0.589415E+02 -0.107445E+02
  vertex  0.290640E+01  0.591316E+02 -0.968740E+01
  vertex  0.535640E+01  0.591316E+02 -0.855100E+01
 endloop
endfacet
facet normal  0.699437E-01  0.985850E+00 -0.152339E+00
 outer loop
  vertex  0.535640E+01  0.591315E+02 -0.855090E+01
  vertex  0.600210E+01  0.589415E+02 -0.948400E+01
  vertex  0.325670E+01  0.589415E+02 -0.107445E+02
 endloop
endfacet
facet normal  0.180788E+00  0.904766E+00 -0.385634E+00
 outer loop
  vertex  0.290640E+01  0.591316E+02 -0.968740E+01
  vertex  0.261280E+01  0.595679E+02 -0.880140E+01
  vertex  0.481520E+01  0.595679E+02 -0.776890E+01
 endloop
endfacet
facet normal  0.177517E+00  0.906597E+00 -0.382844E+00
 outer loop
  vertex  0.481510E+01  0.595679E+02 -0.776880E+01
  vertex  0.535640E+01  0.591316E+02 -0.855100E+01
  vertex  0.290630E+01  0.591315E+02 -0.968730E+01
 endloop
endfacet
facet normal  0.373453E+00  0.483135E+00 -0.791905E+00
 outer loop
  vertex  0.261280E+01  0.595679E+02 -0.880140E+01
  vertex  0.247180E+01  0.603740E+02 -0.837610E+01
  vertex  0.455540E+01  0.603740E+02 -0.739350E+01
 endloop
endfacet
facet normal  0.370560E+00  0.487693E+00 -0.790468E+00
 outer loop
  vertex  0.455530E+01  0.603740E+02 -0.739340E+01
  vertex  0.481520E+01  0.595679E+02 -0.776890E+01
  vertex  0.261270E+01  0.595679E+02 -0.880140E+01
 endloop
endfacet
facet normal  0.424223E+00  0.115412E+00 -0.898173E+00
 outer loop
  vertex  0.247180E+01  0.603740E+02 -0.837610E+01
  vertex  0.243620E+01  0.613399E+02 -0.826880E+01
  vertex  0.448990E+01  0.613399E+02 -0.729880E+01
 endloop
endfacet
facet normal  0.423578E+00  0.116888E+00 -0.898287E+00
 outer loop
  vertex  0.448990E+01  0.613399E+02 -0.729870E+01
  vertex  0.455540E+01  0.603740E+02 -0.739350E+01
  vertex  0.247180E+01  0.603740E+02 -0.837600E+01
 endloop
endfacet
facet normal  0.424715E+00  0.104965E+00 -0.899222E+00
 outer loop
  vertex  0.243620E+01  0.613399E+02 -0.826880E+01
  vertex  0.241010E+01  0.622011E+02 -0.818060E+01
  vertex  0.444180E+01  0.622011E+02 -0.722100E+01
 endloop
endfacet
facet normal  0.424665E+00  0.104968E+00 -0.899245E+00
 outer loop
  vertex  0.444180E+01  0.622010E+02 -0.722100E+01
  vertex  0.448990E+01  0.613399E+02 -0.729880E+01
  vertex  0.243610E+01  0.613399E+02 -0.826870E+01
 endloop
endfacet
facet normal  0.129637E+00  0.952781E+00 -0.274597E+00
 outer loop
  vertex  0.241010E+01  0.622011E+02 -0.818060E+01
  vertex  0.188590E+01  0.627852E+02 -0.640140E+01
  vertex  0.347570E+01  0.627853E+02 -0.565050E+01
 endloop
endfacet
facet normal  0.129658E+00  0.952768E+00 -0.274629E+00
 outer loop
  vertex  0.347560E+01  0.627853E+02 -0.565040E+01
  vertex  0.444180E+01  0.622011E+02 -0.722100E+01
  vertex  0.241000E+01  0.622010E+02 -0.818060E+01
 endloop
endfacet
facet normal  0.959238E+00  0.000000E+00  0.282599E+00
 outer loop
  vertex  0.188590E+01  0.627852E+02 -0.640140E+01
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.000000E+00  0.629999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.137941E-01  0.999470E+00 -0.294738E-01
 outer loop
  vertex  0.000000E+00  0.629999E+02  0.000000E+00
  vertex  0.347570E+01  0.627853E+02 -0.565050E+01
  vertex  0.188590E+01  0.627851E+02 -0.640140E+01
 endloop
endfacet
facet normal -0.169417E+00 -0.966649E+00  0.192060E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.728000E+01  0.442610E+01 -0.115659E+02
  vertex  0.100477E+02  0.442610E+01 -0.912450E+01
 endloop
endfacet
facet normal  0.619983E+00  0.347137E+00 -0.703645E+00
 outer loop
  vertex  0.728000E+01  0.442610E+01 -0.115659E+02
  vertex  0.683800E+01  0.666400E+01 -0.108513E+02
  vertex  0.943770E+01  0.666400E+01 -0.856070E+01
 endloop
endfacet
facet normal  0.620542E+00  0.346386E+00 -0.703523E+00
 outer loop
  vertex  0.943770E+01  0.666400E+01 -0.856070E+01
  vertex  0.100477E+02  0.442610E+01 -0.912450E+01
  vertex  0.728000E+01  0.442600E+01 -0.115658E+02
 endloop
endfacet
facet normal  0.391309E+00  0.805028E+00 -0.445878E+00
 outer loop
  vertex  0.683800E+01  0.666400E+01 -0.108513E+02
  vertex  0.468270E+01  0.962570E+01 -0.739550E+01
  vertex  0.646150E+01  0.962570E+01 -0.583440E+01
 endloop
endfacet
facet normal  0.392545E+00  0.804617E+00 -0.445534E+00
 outer loop
  vertex  0.646150E+01  0.962560E+01 -0.583440E+01
  vertex  0.943770E+01  0.666400E+01 -0.856070E+01
  vertex  0.683790E+01  0.666400E+01 -0.108513E+02
 endloop
endfacet
facet normal  0.567350E+00  0.442281E+00 -0.694623E+00
 outer loop
  vertex  0.468270E+01  0.962570E+01 -0.739550E+01
  vertex  0.433550E+01  0.119983E+02 -0.616840E+01
  vertex  0.592970E+01  0.119983E+02 -0.486630E+01
 endloop
endfacet
facet normal  0.600473E+00  0.413826E+00 -0.684237E+00
 outer loop
  vertex  0.592960E+01  0.119982E+02 -0.486630E+01
  vertex  0.646150E+01  0.962570E+01 -0.583440E+01
  vertex  0.468270E+01  0.962560E+01 -0.739550E+01
 endloop
endfacet
facet normal  0.519379E+00 -0.338071E+00 -0.784827E+00
 outer loop
  vertex  0.433550E+01  0.119983E+02 -0.616840E+01
  vertex  0.644220E+01  0.168341E+02 -0.685730E+01
  vertex  0.862950E+01  0.168341E+02 -0.540980E+01
 endloop
endfacet
facet normal  0.578938E+00 -0.402890E+00 -0.708880E+00
 outer loop
  vertex  0.862950E+01  0.168341E+02 -0.540980E+01
  vertex  0.592970E+01  0.119983E+02 -0.486630E+01
  vertex  0.433540E+01  0.119982E+02 -0.616830E+01
 endloop
endfacet
facet normal  0.433733E+00 -0.367586E+00 -0.822652E+00
 outer loop
  vertex  0.644220E+01  0.168341E+02 -0.685730E+01
  vertex  0.110267E+02  0.265168E+02 -0.876670E+01
  vertex  0.145365E+02  0.265168E+02 -0.691620E+01
 endloop
endfacet
facet normal  0.500125E+00 -0.422686E+00 -0.755785E+00
 outer loop
  vertex  0.145364E+02  0.265167E+02 -0.691620E+01
  vertex  0.862950E+01  0.168341E+02 -0.540980E+01
  vertex  0.644220E+01  0.168341E+02 -0.685720E+01
 endloop
endfacet
facet normal  0.405963E+00 -0.296805E+00 -0.864350E+00
 outer loop
  vertex  0.110267E+02  0.265168E+02 -0.876670E+01
  vertex  0.155279E+02  0.383280E+02 -0.107084E+02
  vertex  0.203406E+02  0.383280E+02 -0.844800E+01
 endloop
endfacet
facet normal  0.441023E+00 -0.325201E+00 -0.836506E+00
 outer loop
  vertex  0.203405E+02  0.383279E+02 -0.844790E+01
  vertex  0.145365E+02  0.265168E+02 -0.691620E+01
  vertex  0.110267E+02  0.265167E+02 -0.876660E+01
 endloop
endfacet
facet normal  0.421466E+00 -0.104440E+00 -0.900810E+00
 outer loop
  vertex  0.155279E+02  0.383280E+02 -0.107084E+02
  vertex  0.165294E+02  0.478155E+02 -0.113398E+02
  vertex  0.216453E+02  0.478155E+02 -0.894620E+01
 endloop
endfacet
facet normal  0.422731E+00 -0.105395E+00 -0.900106E+00
 outer loop
  vertex  0.216452E+02  0.478154E+02 -0.894620E+01
  vertex  0.203406E+02  0.383280E+02 -0.844800E+01
  vertex  0.155278E+02  0.383279E+02 -0.107083E+02
 endloop
endfacet
facet normal  0.418649E+00  0.427676E+00 -0.801140E+00
 outer loop
  vertex  0.165294E+02  0.478155E+02 -0.113398E+02
  vertex  0.132073E+02  0.528995E+02 -0.103618E+02
  vertex  0.173928E+02  0.528995E+02 -0.817460E+01
 endloop
endfacet
facet normal  0.380235E+00  0.441422E+00 -0.812754E+00
 outer loop
  vertex  0.173927E+02  0.528995E+02 -0.817450E+01
  vertex  0.216453E+02  0.478155E+02 -0.894620E+01
  vertex  0.165293E+02  0.478154E+02 -0.113397E+02
 endloop
endfacet
facet normal  0.298491E+00  0.837263E+00 -0.458142E+00
 outer loop
  vertex  0.132073E+02  0.528995E+02 -0.103618E+02
  vertex  0.875680E+01  0.551808E+02 -0.909230E+01
  vertex  0.117025E+02  0.551808E+02 -0.717310E+01
 endloop
endfacet
facet normal  0.251730E+00  0.839393E+00 -0.481718E+00
 outer loop
  vertex  0.117025E+02  0.551808E+02 -0.717300E+01
  vertex  0.173928E+02  0.528995E+02 -0.817460E+01
  vertex  0.132073E+02  0.528995E+02 -0.103618E+02
 endloop
endfacet
facet normal  0.367350E+00  0.810890E+00 -0.455534E+00
 outer loop
  vertex  0.875680E+01  0.551808E+02 -0.909230E+01
  vertex  0.633280E+01  0.564356E+02 -0.881340E+01
  vertex  0.863980E+01  0.564356E+02 -0.695300E+01
 endloop
endfacet
facet normal  0.305706E+00  0.828471E+00 -0.469232E+00
 outer loop
  vertex  0.863980E+01  0.564356E+02 -0.695300E+01
  vertex  0.117025E+02  0.551808E+02 -0.717310E+01
  vertex  0.875670E+01  0.551808E+02 -0.909230E+01
 endloop
endfacet
facet normal  0.632394E+00 -0.270885E+00 -0.725741E+00
 outer loop
  vertex  0.633280E+01  0.564356E+02 -0.881340E+01
  vertex  0.602120E+01  0.573210E+02 -0.941540E+01
  vertex  0.830200E+01  0.573211E+02 -0.742800E+01
 endloop
endfacet
facet normal  0.618000E+00 -0.175285E+00 -0.766388E+00
 outer loop
  vertex  0.830200E+01  0.573210E+02 -0.742790E+01
  vertex  0.863980E+01  0.564356E+02 -0.695300E+01
  vertex  0.633270E+01  0.564356E+02 -0.881340E+01
 endloop
endfacet
facet normal  0.405198E+00 -0.787373E+00 -0.464605E+00
 outer loop
  vertex  0.602120E+01  0.573210E+02 -0.941540E+01
  vertex  0.644700E+01  0.579599E+02 -0.101268E+02
  vertex  0.889800E+01  0.579599E+02 -0.798920E+01
 endloop
endfacet
facet normal  0.405382E+00 -0.786943E+00 -0.465173E+00
 outer loop
  vertex  0.889790E+01  0.579598E+02 -0.798920E+01
  vertex  0.830200E+01  0.573211E+02 -0.742800E+01
  vertex  0.602120E+01  0.573209E+02 -0.941530E+01
 endloop
endfacet
facet normal  0.537783E+00 -0.573427E+00 -0.618038E+00
 outer loop
  vertex  0.644700E+01  0.579599E+02 -0.101268E+02
  vertex  0.663790E+01  0.584363E+02 -0.104027E+02
  vertex  0.916150E+01  0.584363E+02 -0.820680E+01
 endloop
endfacet
facet normal  0.536493E+00 -0.577724E+00 -0.615151E+00
 outer loop
  vertex  0.916140E+01  0.584362E+02 -0.820680E+01
  vertex  0.889800E+01  0.579599E+02 -0.798920E+01
  vertex  0.644700E+01  0.579598E+02 -0.101267E+02
 endloop
endfacet
facet normal  0.506755E+00  0.636568E+00 -0.581361E+00
 outer loop
  vertex  0.663790E+01  0.584363E+02 -0.104027E+02
  vertex  0.648510E+01  0.587595E+02 -0.101820E+02
  vertex  0.895070E+01  0.587596E+02 -0.803270E+01
 endloop
endfacet
facet normal  0.503923E+00  0.640792E+00 -0.579177E+00
 outer loop
  vertex  0.895060E+01  0.587596E+02 -0.803260E+01
  vertex  0.916150E+01  0.584363E+02 -0.820680E+01
  vertex  0.663780E+01  0.584362E+02 -0.104027E+02
 endloop
endfacet
facet normal  0.139135E+00  0.977490E+00 -0.158602E+00
 outer loop
  vertex  0.648510E+01  0.587595E+02 -0.101820E+02
  vertex  0.600210E+01  0.589415E+02 -0.948400E+01
  vertex  0.828410E+01  0.589415E+02 -0.748210E+01
 endloop
endfacet
facet normal  0.136981E+00  0.978014E+00 -0.157238E+00
 outer loop
  vertex  0.828400E+01  0.589415E+02 -0.748210E+01
  vertex  0.895070E+01  0.587596E+02 -0.803270E+01
  vertex  0.648500E+01  0.587594E+02 -0.101820E+02
 endloop
endfacet
facet normal  0.110370E+00  0.986059E+00 -0.124525E+00
 outer loop
  vertex  0.600210E+01  0.589415E+02 -0.948400E+01
  vertex  0.535640E+01  0.591316E+02 -0.855100E+01
  vertex  0.739290E+01  0.591316E+02 -0.674600E+01
 endloop
endfacet
facet normal  0.108301E+00  0.986422E+00 -0.123459E+00
 outer loop
  vertex  0.739280E+01  0.591315E+02 -0.674590E+01
  vertex  0.828410E+01  0.589415E+02 -0.748210E+01
  vertex  0.600200E+01  0.589415E+02 -0.948400E+01
 endloop
endfacet
facet normal  0.280013E+00  0.907678E+00 -0.312592E+00
 outer loop
  vertex  0.535640E+01  0.591316E+02 -0.855100E+01
  vertex  0.481520E+01  0.595679E+02 -0.776890E+01
  vertex  0.664590E+01  0.595679E+02 -0.612900E+01
 endloop
endfacet
facet normal  0.275055E+00  0.909943E+00 -0.310400E+00
 outer loop
  vertex  0.664580E+01  0.595679E+02 -0.612900E+01
  vertex  0.739290E+01  0.591316E+02 -0.674600E+01
  vertex  0.535640E+01  0.591315E+02 -0.855090E+01
 endloop
endfacet
facet normal  0.583642E+00  0.489738E+00 -0.647702E+00
 outer loop
  vertex  0.481520E+01  0.595679E+02 -0.776890E+01
  vertex  0.455540E+01  0.603740E+02 -0.739350E+01
  vertex  0.628740E+01  0.603740E+02 -0.583280E+01
 endloop
endfacet
facet normal  0.579482E+00  0.495599E+00 -0.646979E+00
 outer loop
  vertex  0.628730E+01  0.603740E+02 -0.583270E+01
  vertex  0.664590E+01  0.595679E+02 -0.612900E+01
  vertex  0.481510E+01  0.595679E+02 -0.776880E+01
 endloop
endfacet
facet normal  0.665388E+00  0.117400E+00 -0.737208E+00
 outer loop
  vertex  0.455540E+01  0.603740E+02 -0.739350E+01
  vertex  0.448990E+01  0.613399E+02 -0.729880E+01
  vertex  0.619690E+01  0.613399E+02 -0.575810E+01
 endloop
endfacet
facet normal  0.664583E+00  0.119382E+00 -0.737616E+00
 outer loop
  vertex  0.619680E+01  0.613399E+02 -0.575810E+01
  vertex  0.628740E+01  0.603740E+02 -0.583280E+01
  vertex  0.455530E+01  0.603740E+02 -0.739340E+01
 endloop
endfacet
facet normal  0.666422E+00  0.103918E+00 -0.738297E+00
 outer loop
  vertex  0.448990E+01  0.613399E+02 -0.729880E+01
  vertex  0.444180E+01  0.622011E+02 -0.722100E+01
  vertex  0.613050E+01  0.622011E+02 -0.569670E+01
 endloop
endfacet
facet normal  0.666357E+00  0.104106E+00 -0.738330E+00
 outer loop
  vertex  0.613040E+01  0.622010E+02 -0.569670E+01
  vertex  0.619690E+01  0.613399E+02 -0.575810E+01
  vertex  0.448990E+01  0.613399E+02 -0.729870E+01
 endloop
endfacet
facet normal  0.205484E+00  0.951814E+00 -0.227655E+00
 outer loop
  vertex  0.444180E+01  0.622011E+02 -0.722100E+01
  vertex  0.347570E+01  0.627853E+02 -0.565050E+01
  vertex  0.479720E+01  0.627853E+02 -0.445770E+01
 endloop
endfacet
facet normal  0.205457E+00  0.951814E+00 -0.227678E+00
 outer loop
  vertex  0.479720E+01  0.627853E+02 -0.445760E+01
  vertex  0.613050E+01  0.622011E+02 -0.569670E+01
  vertex  0.444180E+01  0.622010E+02 -0.722100E+01
 endloop
endfacet
facet normal  0.220285E-01  0.999459E+00 -0.244092E-01
 outer loop
  vertex  0.000000E+00  0.629999E+02  0.000000E+00
  vertex  0.479720E+01  0.627853E+02 -0.445770E+01
  vertex  0.347560E+01  0.627853E+02 -0.565040E+01
 endloop
endfacet
facet normal -0.215258E+00 -0.966262E+00  0.141429E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.100477E+02  0.442610E+01 -0.912450E+01
  vertex  0.120955E+02  0.442610E+01 -0.600770E+01
 endloop
endfacet
facet normal  0.784516E+00  0.343849E+00 -0.516044E+00
 outer loop
  vertex  0.100477E+02  0.442610E+01 -0.912450E+01
  vertex  0.943770E+01  0.666400E+01 -0.856070E+01
  vertex  0.113612E+02  0.666400E+01 -0.563650E+01
 endloop
endfacet
facet normal  0.784990E+00  0.343148E+00 -0.515790E+00
 outer loop
  vertex  0.113612E+02  0.666400E+01 -0.563640E+01
  vertex  0.120955E+02  0.442610E+01 -0.600770E+01
  vertex  0.100476E+02  0.442600E+01 -0.912450E+01
 endloop
endfacet
facet normal  0.497816E+00  0.802657E+00 -0.328514E+00
 outer loop
  vertex  0.943770E+01  0.666400E+01 -0.856070E+01
  vertex  0.646150E+01  0.962570E+01 -0.583440E+01
  vertex  0.777670E+01  0.962570E+01 -0.384140E+01
 endloop
endfacet
facet normal  0.498648E+00  0.802349E+00 -0.328004E+00
 outer loop
  vertex  0.777670E+01  0.962560E+01 -0.384130E+01
  vertex  0.113612E+02  0.666400E+01 -0.563650E+01
  vertex  0.943770E+01  0.666400E+01 -0.856070E+01
 endloop
endfacet
facet normal  0.759009E+00  0.384511E+00 -0.525411E+00
 outer loop
  vertex  0.646150E+01  0.962570E+01 -0.583440E+01
  vertex  0.592970E+01  0.119983E+02 -0.486630E+01
  vertex  0.708040E+01  0.119983E+02 -0.320400E+01
 endloop
endfacet
facet normal  0.776802E+00  0.365762E+00 -0.512637E+00
 outer loop
  vertex  0.708030E+01  0.119982E+02 -0.320390E+01
  vertex  0.777670E+01  0.962570E+01 -0.384140E+01
  vertex  0.646150E+01  0.962560E+01 -0.583440E+01
 endloop
endfacet
facet normal  0.696691E+00 -0.451604E+00 -0.557383E+00
 outer loop
  vertex  0.592970E+01  0.119983E+02 -0.486630E+01
  vertex  0.862950E+01  0.168341E+02 -0.540980E+01
  vertex  0.101079E+02  0.168341E+02 -0.356190E+01
 endloop
endfacet
facet normal  0.718348E+00 -0.486507E+00 -0.497279E+00
 outer loop
  vertex  0.101078E+02  0.168341E+02 -0.356180E+01
  vertex  0.708040E+01  0.119983E+02 -0.320400E+01
  vertex  0.592960E+01  0.119982E+02 -0.486630E+01
 endloop
endfacet
facet normal  0.636830E+00 -0.482110E+00 -0.601679E+00
 outer loop
  vertex  0.862950E+01  0.168341E+02 -0.540980E+01
  vertex  0.145365E+02  0.265168E+02 -0.691620E+01
  vertex  0.167686E+02  0.265168E+02 -0.455370E+01
 endloop
endfacet
facet normal  0.669240E+00 -0.515211E+00 -0.535421E+00
 outer loop
  vertex  0.167686E+02  0.265167E+02 -0.455360E+01
  vertex  0.101079E+02  0.168341E+02 -0.356190E+01
  vertex  0.862950E+01  0.168341E+02 -0.540980E+01
 endloop
endfacet
facet normal  0.638125E+00 -0.398979E+00 -0.658492E+00
 outer loop
  vertex  0.145365E+02  0.265168E+02 -0.691620E+01
  vertex  0.203406E+02  0.383280E+02 -0.844800E+01
  vertex  0.233184E+02  0.383280E+02 -0.556230E+01
 endloop
endfacet
facet normal  0.659927E+00 -0.419199E+00 -0.623513E+00
 outer loop
  vertex  0.233183E+02  0.383279E+02 -0.556230E+01
  vertex  0.167686E+02  0.265168E+02 -0.455370E+01
  vertex  0.145364E+02  0.265167E+02 -0.691620E+01
 endloop
endfacet
facet normal  0.689023E+00 -0.132172E+00 -0.712585E+00
 outer loop
  vertex  0.203406E+02  0.383280E+02 -0.844800E+01
  vertex  0.216453E+02  0.478155E+02 -0.894620E+01
  vertex  0.248057E+02  0.478155E+02 -0.589030E+01
 endloop
endfacet
facet normal  0.689735E+00 -0.132728E+00 -0.711793E+00
 outer loop
  vertex  0.248057E+02  0.478154E+02 -0.589020E+01
  vertex  0.233184E+02  0.383280E+02 -0.556230E+01
  vertex  0.203405E+02  0.383279E+02 -0.844790E+01
 endloop
endfacet
facet normal  0.591111E+00  0.579571E+00 -0.560968E+00
 outer loop
  vertex  0.216453E+02  0.478155E+02 -0.894620E+01
  vertex  0.173928E+02  0.528995E+02 -0.817460E+01
  vertex  0.200428E+02  0.528995E+02 -0.538220E+01
 endloop
endfacet
facet normal  0.563278E+00  0.585936E+00 -0.582577E+00
 outer loop
  vertex  0.200428E+02  0.528995E+02 -0.538210E+01
  vertex  0.248057E+02  0.478155E+02 -0.589030E+01
  vertex  0.216452E+02  0.478154E+02 -0.894620E+01
 endloop
endfacet
facet normal  0.320077E+00  0.911606E+00 -0.257924E+00
 outer loop
  vertex  0.173928E+02  0.528995E+02 -0.817460E+01
  vertex  0.117025E+02  0.551808E+02 -0.717310E+01
  vertex  0.136770E+02  0.551808E+02 -0.472280E+01
 endloop
endfacet
facet normal  0.297565E+00  0.911975E+00 -0.282411E+00
 outer loop
  vertex  0.136770E+02  0.551808E+02 -0.472270E+01
  vertex  0.200428E+02  0.528995E+02 -0.538220E+01
  vertex  0.173927E+02  0.528995E+02 -0.817450E+01
 endloop
endfacet
facet normal  0.352395E+00  0.903143E+00 -0.245257E+00
 outer loop
  vertex  0.117025E+02  0.551808E+02 -0.717310E+01
  vertex  0.863980E+01  0.564356E+02 -0.695300E+01
  vertex  0.102928E+02  0.564356E+02 -0.457790E+01
 endloop
endfacet
facet normal  0.325564E+00  0.908392E+00 -0.262357E+00
 outer loop
  vertex  0.102927E+02  0.564356E+02 -0.457780E+01
  vertex  0.136770E+02  0.551808E+02 -0.472280E+01
  vertex  0.117025E+02  0.551808E+02 -0.717300E+01
 endloop
endfacet
facet normal  0.833151E+00  0.213877E-01 -0.552631E+00
 outer loop
  vertex  0.863980E+01  0.564356E+02 -0.695300E+01
  vertex  0.830200E+01  0.573211E+02 -0.742800E+01
  vertex  0.998500E+01  0.573210E+02 -0.489070E+01
 endloop
endfacet
facet normal  0.817923E+00  0.833993E-01 -0.569251E+00
 outer loop
  vertex  0.998490E+01  0.573209E+02 -0.489060E+01
  vertex  0.102928E+02  0.564356E+02 -0.457790E+01
  vertex  0.863980E+01  0.564356E+02 -0.695300E+01
 endloop
endfacet
facet normal  0.516930E+00 -0.784079E+00 -0.343515E+00
 outer loop
  vertex  0.830200E+01  0.573211E+02 -0.742800E+01
  vertex  0.889800E+01  0.579599E+02 -0.798920E+01
  vertex  0.107115E+02  0.579599E+02 -0.526020E+01
 endloop
endfacet
facet normal  0.516166E+00 -0.785075E+00 -0.342388E+00
 outer loop
  vertex  0.107115E+02  0.579598E+02 -0.526020E+01
  vertex  0.998500E+01  0.573210E+02 -0.489070E+01
  vertex  0.830200E+01  0.573210E+02 -0.742790E+01
 endloop
endfacet
facet normal  0.677489E+00 -0.580841E+00 -0.451256E+00
 outer loop
  vertex  0.889800E+01  0.579599E+02 -0.798920E+01
  vertex  0.916150E+01  0.584363E+02 -0.820680E+01
  vertex  0.110287E+02  0.584363E+02 -0.540350E+01
 endloop
endfacet
facet normal  0.675579E+00 -0.584842E+00 -0.448946E+00
 outer loop
  vertex  0.110286E+02  0.584362E+02 -0.540350E+01
  vertex  0.107115E+02  0.579599E+02 -0.526020E+01
  vertex  0.889790E+01  0.579598E+02 -0.798920E+01
 endloop
endfacet
facet normal  0.637287E+00  0.643692E+00 -0.423705E+00
 outer loop
  vertex  0.916150E+01  0.584363E+02 -0.820680E+01
  vertex  0.895070E+01  0.587596E+02 -0.803270E+01
  vertex  0.107750E+02  0.587596E+02 -0.528880E+01
 endloop
endfacet
facet normal  0.634065E+00  0.647733E+00 -0.422378E+00
 outer loop
  vertex  0.107749E+02  0.587596E+02 -0.528870E+01
  vertex  0.110287E+02  0.584363E+02 -0.540350E+01
  vertex  0.916140E+01  0.584362E+02 -0.820680E+01
 endloop
endfacet
facet normal  0.172724E+00  0.978339E+00 -0.114097E+00
 outer loop
  vertex  0.895070E+01  0.587596E+02 -0.803270E+01
  vertex  0.828410E+01  0.589415E+02 -0.748210E+01
  vertex  0.997240E+01  0.589415E+02 -0.492630E+01
 endloop
endfacet
facet normal  0.170583E+00  0.978794E+00 -0.113423E+00
 outer loop
  vertex  0.997230E+01  0.589415E+02 -0.492630E+01
  vertex  0.107750E+02  0.587596E+02 -0.528880E+01
  vertex  0.895060E+01  0.587596E+02 -0.803260E+01
 endloop
endfacet
facet normal  0.136648E+00  0.986582E+00 -0.893451E-01
 outer loop
  vertex  0.828410E+01  0.589415E+02 -0.748210E+01
  vertex  0.739290E+01  0.591316E+02 -0.674600E+01
  vertex  0.889960E+01  0.591316E+02 -0.444160E+01
 endloop
endfacet
facet normal  0.134602E+00  0.986902E+00 -0.889203E-01
 outer loop
  vertex  0.889960E+01  0.591315E+02 -0.444150E+01
  vertex  0.997240E+01  0.589415E+02 -0.492630E+01
  vertex  0.828400E+01  0.589415E+02 -0.748210E+01
 endloop
endfacet
facet normal  0.346690E+00  0.910767E+00 -0.224299E+00
 outer loop
  vertex  0.739290E+01  0.591316E+02 -0.674600E+01
  vertex  0.664590E+01  0.595679E+02 -0.612900E+01
  vertex  0.800040E+01  0.595679E+02 -0.403540E+01
 endloop
endfacet
facet normal  0.341835E+00  0.912779E+00 -0.223568E+00
 outer loop
  vertex  0.800030E+01  0.595679E+02 -0.403530E+01
  vertex  0.889960E+01  0.591316E+02 -0.444160E+01
  vertex  0.739280E+01  0.591315E+02 -0.674590E+01
 endloop
endfacet
facet normal  0.729816E+00  0.497046E+00 -0.469377E+00
 outer loop
  vertex  0.664590E+01  0.595679E+02 -0.612900E+01
  vertex  0.628740E+01  0.603740E+02 -0.583280E+01
  vertex  0.756880E+01  0.603740E+02 -0.384040E+01
 endloop
endfacet
facet normal  0.725917E+00  0.502436E+00 -0.469682E+00
 outer loop
  vertex  0.756870E+01  0.603740E+02 -0.384030E+01
  vertex  0.800040E+01  0.595679E+02 -0.403540E+01
  vertex  0.664580E+01  0.595679E+02 -0.612900E+01
 endloop
endfacet
facet normal  0.835402E+00  0.119759E+00 -0.536434E+00
 outer loop
  vertex  0.628740E+01  0.603740E+02 -0.583280E+01
  vertex  0.619690E+01  0.613399E+02 -0.575810E+01
  vertex  0.745990E+01  0.613399E+02 -0.379120E+01
 endloop
endfacet
facet normal  0.834795E+00  0.121612E+00 -0.536962E+00
 outer loop
  vertex  0.745980E+01  0.613399E+02 -0.379110E+01
  vertex  0.756880E+01  0.603740E+02 -0.384040E+01
  vertex  0.628730E+01  0.603740E+02 -0.583270E+01
 endloop
endfacet
facet normal  0.836998E+00  0.102852E+00 -0.537453E+00
 outer loop
  vertex  0.619690E+01  0.613399E+02 -0.575810E+01
  vertex  0.613050E+01  0.622011E+02 -0.569670E+01
  vertex  0.738000E+01  0.622011E+02 -0.375080E+01
 endloop
endfacet
facet normal  0.836968E+00  0.102940E+00 -0.537483E+00
 outer loop
  vertex  0.738000E+01  0.622010E+02 -0.375070E+01
  vertex  0.745990E+01  0.613399E+02 -0.379120E+01
  vertex  0.619680E+01  0.613399E+02 -0.575810E+01
 endloop
endfacet
facet normal  0.260899E+00  0.950720E+00 -0.167519E+00
 outer loop
  vertex  0.613050E+01  0.622011E+02 -0.569670E+01
  vertex  0.479720E+01  0.627853E+02 -0.445770E+01
  vertex  0.577490E+01  0.627853E+02 -0.293500E+01
 endloop
endfacet
facet normal  0.260845E+00  0.950729E+00 -0.167556E+00
 outer loop
  vertex  0.577480E+01  0.627853E+02 -0.293490E+01
  vertex  0.738000E+01  0.622011E+02 -0.375080E+01
  vertex  0.613040E+01  0.622010E+02 -0.569670E+01
 endloop
endfacet
facet normal -0.680710E+00  0.000000E+00 -0.732553E+00
 outer loop
  vertex  0.479720E+01  0.627853E+02 -0.445770E+01
  vertex  0.000000E+00  0.629999E+02  0.000000E+00
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
 endloop
endfacet
facet normal  0.280147E-01  0.999446E+00 -0.179890E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.577490E+01  0.627853E+02 -0.293500E+01
  vertex  0.479720E+01  0.627853E+02 -0.445760E+01
 endloop
endfacet
facet normal -0.244787E+00 -0.966112E+00  0.818886E-01
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.120955E+02  0.442610E+01 -0.600770E+01
  vertex  0.132794E+02  0.442610E+01 -0.246870E+01
 endloop
endfacet
facet normal  0.891086E+00  0.341888E+00 -0.298460E+00
 outer loop
  vertex  0.120955E+02  0.442610E+01 -0.600770E+01
  vertex  0.113612E+02  0.666400E+01 -0.563650E+01
  vertex  0.124733E+02  0.666400E+01 -0.231620E+01
 endloop
endfacet
facet normal  0.891342E+00  0.341427E+00 -0.298223E+00
 outer loop
  vertex  0.124732E+02  0.666400E+01 -0.231620E+01
  vertex  0.132794E+02  0.442610E+01 -0.246870E+01
  vertex  0.120954E+02  0.442600E+01 -0.600760E+01
 endloop
endfacet
facet normal  0.566897E+00  0.801491E+00 -0.190369E+00
 outer loop
  vertex  0.113612E+02  0.666400E+01 -0.563650E+01
  vertex  0.777670E+01  0.962570E+01 -0.384140E+01
  vertex  0.853660E+01  0.962570E+01 -0.157850E+01
 endloop
endfacet
facet normal  0.567244E+00  0.801334E+00 -0.189998E+00
 outer loop
  vertex  0.853660E+01  0.962560E+01 -0.157850E+01
  vertex  0.124733E+02  0.666400E+01 -0.231620E+01
  vertex  0.113612E+02  0.666400E+01 -0.563640E+01
 endloop
endfacet
facet normal  0.887998E+00  0.342915E+00 -0.306381E+00
 outer loop
  vertex  0.777670E+01  0.962570E+01 -0.384140E+01
  vertex  0.708040E+01  0.119983E+02 -0.320400E+01
  vertex  0.773160E+01  0.119983E+02 -0.131660E+01
 endloop
endfacet
facet normal  0.892825E+00  0.336090E+00 -0.299846E+00
 outer loop
  vertex  0.773150E+01  0.119982E+02 -0.131650E+01
  vertex  0.853660E+01  0.962570E+01 -0.157850E+01
  vertex  0.777670E+01  0.962560E+01 -0.384130E+01
 endloop
endfacet
facet normal  0.798608E+00 -0.522131E+00 -0.299340E+00
 outer loop
  vertex  0.708040E+01  0.119983E+02 -0.320400E+01
  vertex  0.101079E+02  0.168341E+02 -0.356190E+01
  vertex  0.108944E+02  0.168341E+02 -0.146360E+01
 endloop
endfacet
facet normal  0.800477E+00 -0.531923E+00 -0.276214E+00
 outer loop
  vertex  0.108943E+02  0.168341E+02 -0.146360E+01
  vertex  0.773160E+01  0.119983E+02 -0.131660E+01
  vertex  0.708030E+01  0.119982E+02 -0.320390E+01
 endloop
endfacet
facet normal  0.765723E+00 -0.559272E+00 -0.317621E+00
 outer loop
  vertex  0.101079E+02  0.168341E+02 -0.356190E+01
  vertex  0.167686E+02  0.265168E+02 -0.455370E+01
  vertex  0.178813E+02  0.265168E+02 -0.187120E+01
 endloop
endfacet
facet normal  0.770544E+00 -0.568169E+00 -0.288871E+00
 outer loop
  vertex  0.178812E+02  0.265167E+02 -0.187110E+01
  vertex  0.108944E+02  0.168341E+02 -0.146360E+01
  vertex  0.101078E+02  0.168341E+02 -0.356180E+01
 endloop
endfacet
facet normal  0.805070E+00 -0.476601E+00 -0.353149E+00
 outer loop
  vertex  0.167686E+02  0.265168E+02 -0.455370E+01
  vertex  0.233184E+02  0.383280E+02 -0.556230E+01
  vertex  0.247557E+02  0.383280E+02 -0.228570E+01
 endloop
endfacet
facet normal  0.808992E+00 -0.482626E+00 -0.335564E+00
 outer loop
  vertex  0.247556E+02  0.383279E+02 -0.228570E+01
  vertex  0.178813E+02  0.265168E+02 -0.187120E+01
  vertex  0.167686E+02  0.265167E+02 -0.455360E+01
 endloop
endfacet
facet normal  0.904562E+00 -0.155527E+00 -0.396961E+00
 outer loop
  vertex  0.233184E+02  0.383280E+02 -0.556230E+01
  vertex  0.248057E+02  0.478155E+02 -0.589030E+01
  vertex  0.263284E+02  0.478155E+02 -0.242050E+01
 endloop
endfacet
facet normal  0.904608E+00 -0.155583E+00 -0.396834E+00
 outer loop
  vertex  0.263283E+02  0.478154E+02 -0.242050E+01
  vertex  0.247557E+02  0.383280E+02 -0.228570E+01
  vertex  0.233183E+02  0.383279E+02 -0.556230E+01
 endloop
endfacet
facet normal  0.685378E+00  0.670483E+00 -0.284095E+00
 outer loop
  vertex  0.248057E+02  0.478155E+02 -0.589030E+01
  vertex  0.200428E+02  0.528995E+02 -0.538220E+01
  vertex  0.213570E+02  0.528995E+02 -0.221170E+01
 endloop
endfacet
facet normal  0.676602E+00  0.673818E+00 -0.296950E+00
 outer loop
  vertex  0.213570E+02  0.528995E+02 -0.221160E+01
  vertex  0.263284E+02  0.478155E+02 -0.242050E+01
  vertex  0.248057E+02  0.478154E+02 -0.589020E+01
 endloop
endfacet
facet normal  0.323723E+00  0.938357E+00 -0.121200E+00
 outer loop
  vertex  0.200428E+02  0.528995E+02 -0.538220E+01
  vertex  0.136770E+02  0.551808E+02 -0.472280E+01
  vertex  0.147186E+02  0.551808E+02 -0.194070E+01
 endloop
endfacet
facet normal  0.317365E+00  0.939134E+00 -0.131555E+00
 outer loop
  vertex  0.147186E+02  0.551808E+02 -0.194070E+01
  vertex  0.213570E+02  0.528995E+02 -0.221170E+01
  vertex  0.200428E+02  0.528995E+02 -0.538210E+01
 endloop
endfacet
facet normal  0.340821E+00  0.932761E+00 -0.117462E+00
 outer loop
  vertex  0.136770E+02  0.551808E+02 -0.472280E+01
  vertex  0.102928E+02  0.564356E+02 -0.457790E+01
  vertex  0.112222E+02  0.564356E+02 -0.188120E+01
 endloop
endfacet
facet normal  0.333264E+00  0.934541E+00 -0.124776E+00
 outer loop
  vertex  0.112222E+02  0.564356E+02 -0.188110E+01
  vertex  0.147186E+02  0.551808E+02 -0.194070E+01
  vertex  0.136770E+02  0.551808E+02 -0.472270E+01
 endloop
endfacet
facet normal  0.926169E+00  0.211726E+00 -0.312063E+00
 outer loop
  vertex  0.102928E+02  0.564356E+02 -0.457790E+01
  vertex  0.998500E+01  0.573210E+02 -0.489070E+01
  vertex  0.109557E+02  0.573211E+02 -0.200970E+01
 endloop
endfacet
facet normal  0.919852E+00  0.230958E+00 -0.317067E+00
 outer loop
  vertex  0.109556E+02  0.573210E+02 -0.200970E+01
  vertex  0.112222E+02  0.564356E+02 -0.188120E+01
  vertex  0.102927E+02  0.564356E+02 -0.457780E+01
 endloop
endfacet
facet normal  0.588149E+00 -0.783885E+00 -0.199011E+00
 outer loop
  vertex  0.998500E+01  0.573210E+02 -0.489070E+01
  vertex  0.107115E+02  0.579599E+02 -0.526020E+01
  vertex  0.117600E+02  0.579599E+02 -0.216150E+01
 endloop
endfacet
facet normal  0.586494E+00 -0.785484E+00 -0.197582E+00
 outer loop
  vertex  0.117600E+02  0.579598E+02 -0.216140E+01
  vertex  0.109557E+02  0.573211E+02 -0.200970E+01
  vertex  0.998490E+01  0.573209E+02 -0.489060E+01
 endloop
endfacet
facet normal  0.765932E+00 -0.588113E+00 -0.259754E+00
 outer loop
  vertex  0.107115E+02  0.579599E+02 -0.526020E+01
  vertex  0.110287E+02  0.584363E+02 -0.540350E+01
  vertex  0.121082E+02  0.584363E+02 -0.222040E+01
 endloop
endfacet
facet normal  0.764308E+00 -0.590728E+00 -0.258598E+00
 outer loop
  vertex  0.121082E+02  0.584362E+02 -0.222040E+01
  vertex  0.117600E+02  0.579599E+02 -0.216150E+01
  vertex  0.107115E+02  0.579598E+02 -0.526020E+01
 endloop
endfacet
facet normal  0.719209E+00  0.650744E+00 -0.243453E+00
 outer loop
  vertex  0.110287E+02  0.584363E+02 -0.540350E+01
  vertex  0.107750E+02  0.587596E+02 -0.528880E+01
  vertex  0.118296E+02  0.587596E+02 -0.217330E+01
 endloop
endfacet
facet normal  0.716991E+00  0.653282E+00 -0.243200E+00
 outer loop
  vertex  0.118296E+02  0.587596E+02 -0.217330E+01
  vertex  0.121082E+02  0.584363E+02 -0.222040E+01
  vertex  0.110286E+02  0.584362E+02 -0.540350E+01
 endloop
endfacet
facet normal  0.192642E+00  0.979127E+00 -0.647961E-01
 outer loop
  vertex  0.107750E+02  0.587596E+02 -0.528880E+01
  vertex  0.997240E+01  0.589415E+02 -0.492630E+01
  vertex  0.109485E+02  0.589415E+02 -0.202430E+01
 endloop
endfacet
facet normal  0.191226E+00  0.979409E+00 -0.647384E-01
 outer loop
  vertex  0.109484E+02  0.589415E+02 -0.202430E+01
  vertex  0.118296E+02  0.587596E+02 -0.217330E+01
  vertex  0.107749E+02  0.587596E+02 -0.528870E+01
 endloop
endfacet
facet normal  0.152038E+00  0.987078E+00 -0.506193E-01
 outer loop
  vertex  0.997240E+01  0.589415E+02 -0.492630E+01
  vertex  0.889960E+01  0.591316E+02 -0.444160E+01
  vertex  0.977070E+01  0.591316E+02 -0.182520E+01
 endloop
endfacet
facet normal  0.150691E+00  0.987280E+00 -0.506909E-01
 outer loop
  vertex  0.977070E+01  0.591315E+02 -0.182510E+01
  vertex  0.109485E+02  0.589415E+02 -0.202430E+01
  vertex  0.997230E+01  0.589415E+02 -0.492630E+01
 endloop
endfacet
facet normal  0.385922E+00  0.913729E+00 -0.127131E+00
 outer loop
  vertex  0.889960E+01  0.591316E+02 -0.444160E+01
  vertex  0.800040E+01  0.595679E+02 -0.403540E+01
  vertex  0.878350E+01  0.595679E+02 -0.165820E+01
 endloop
endfacet
facet normal  0.382787E+00  0.914998E+00 -0.127484E+00
 outer loop
  vertex  0.878340E+01  0.595679E+02 -0.165820E+01
  vertex  0.977070E+01  0.591316E+02 -0.182520E+01
  vertex  0.889960E+01  0.591315E+02 -0.444150E+01
 endloop
endfacet
facet normal  0.820611E+00  0.504373E+00 -0.268712E+00
 outer loop
  vertex  0.800040E+01  0.595679E+02 -0.403540E+01
  vertex  0.756880E+01  0.603740E+02 -0.384040E+01
  vertex  0.830960E+01  0.603740E+02 -0.157810E+01
 endloop
endfacet
facet normal  0.818150E+00  0.507905E+00 -0.269561E+00
 outer loop
  vertex  0.830950E+01  0.603740E+02 -0.157800E+01
  vertex  0.878350E+01  0.595679E+02 -0.165820E+01
  vertex  0.800030E+01  0.595679E+02 -0.403530E+01
 endloop
endfacet
facet normal  0.943389E+00  0.122071E+00 -0.308408E+00
 outer loop
  vertex  0.756880E+01  0.603740E+02 -0.384040E+01
  vertex  0.745990E+01  0.613399E+02 -0.379120E+01
  vertex  0.819000E+01  0.613399E+02 -0.155790E+01
 endloop
endfacet
facet normal  0.943071E+00  0.123362E+00 -0.308868E+00
 outer loop
  vertex  0.818990E+01  0.613399E+02 -0.155780E+01
  vertex  0.830960E+01  0.603740E+02 -0.157810E+01
  vertex  0.756870E+01  0.603740E+02 -0.384030E+01
 endloop
endfacet
facet normal  0.945521E+00  0.102223E+00 -0.309097E+00
 outer loop
  vertex  0.745990E+01  0.613399E+02 -0.379120E+01
  vertex  0.738000E+01  0.622011E+02 -0.375080E+01
  vertex  0.810230E+01  0.622011E+02 -0.154130E+01
 endloop
endfacet
facet normal  0.945488E+00  0.102364E+00 -0.309151E+00
 outer loop
  vertex  0.810220E+01  0.622010E+02 -0.154130E+01
  vertex  0.819000E+01  0.613399E+02 -0.155790E+01
  vertex  0.745980E+01  0.613399E+02 -0.379110E+01
 endloop
endfacet
facet normal  0.296523E+00  0.950091E+00 -0.969545E-01
 outer loop
  vertex  0.738000E+01  0.622011E+02 -0.375080E+01
  vertex  0.577490E+01  0.627853E+02 -0.293500E+01
  vertex  0.634020E+01  0.627853E+02 -0.120610E+01
 endloop
endfacet
facet normal  0.296519E+00  0.950090E+00 -0.969811E-01
 outer loop
  vertex  0.634010E+01  0.627853E+02 -0.120600E+01
  vertex  0.810230E+01  0.622011E+02 -0.154130E+01
  vertex  0.738000E+01  0.622010E+02 -0.375070E+01
 endloop
endfacet
facet normal  0.318618E-01  0.999438E+00 -0.104203E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.634020E+01  0.627853E+02 -0.120610E+01
  vertex  0.577480E+01  0.627853E+02 -0.293490E+01
 endloop
endfacet
facet normal -0.257721E+00 -0.966140E+00  0.123588E-01
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.132794E+02  0.442610E+01 -0.246870E+01
  vertex  0.134572E+02  0.442610E+01  0.123900E+01
 endloop
endfacet
facet normal  0.938889E+00  0.341261E+00 -0.450456E-01
 outer loop
  vertex  0.132794E+02  0.442610E+01 -0.246870E+01
  vertex  0.124733E+02  0.666400E+01 -0.231620E+01
  vertex  0.126402E+02  0.666400E+01  0.116250E+01
 endloop
endfacet
facet normal  0.938886E+00  0.341265E+00 -0.450594E-01
 outer loop
  vertex  0.126401E+02  0.666400E+01  0.116250E+01
  vertex  0.134572E+02  0.442610E+01  0.123900E+01
  vertex  0.132793E+02  0.442600E+01 -0.246860E+01
 endloop
endfacet
facet normal  0.597496E+00  0.801356E+00 -0.287569E-01
 outer loop
  vertex  0.124733E+02  0.666400E+01 -0.231620E+01
  vertex  0.853660E+01  0.962570E+01 -0.157850E+01
  vertex  0.865070E+01  0.962570E+01  0.792200E+00
 endloop
endfacet
facet normal  0.597521E+00  0.801340E+00 -0.286848E-01
 outer loop
  vertex  0.865060E+01  0.962560E+01  0.792200E+00
  vertex  0.126402E+02  0.666400E+01  0.116250E+01
  vertex  0.124732E+02  0.666400E+01 -0.231620E+01
 endloop
endfacet
facet normal  0.944416E+00  0.325514E+00 -0.460412E-01
 outer loop
  vertex  0.853660E+01  0.962570E+01 -0.157850E+01
  vertex  0.773160E+01  0.119983E+02 -0.131660E+01
  vertex  0.782800E+01  0.119983E+02  0.660800E+00
 endloop
endfacet
facet normal  0.944608E+00  0.325036E+00 -0.454768E-01
 outer loop
  vertex  0.782800E+01  0.119982E+02  0.660700E+00
  vertex  0.865070E+01  0.962570E+01  0.792200E+00
  vertex  0.853660E+01  0.962560E+01 -0.157850E+01
 endloop
endfacet
facet normal  0.835557E+00 -0.547772E+00 -0.423064E-01
 outer loop
  vertex  0.773160E+01  0.119983E+02 -0.131660E+01
  vertex  0.108944E+02  0.168341E+02 -0.146360E+01
  vertex  0.110057E+02  0.168341E+02  0.734600E+00
 endloop
endfacet
facet normal  0.835306E+00 -0.548274E+00 -0.407387E-01
 outer loop
  vertex  0.110057E+02  0.168341E+02  0.734600E+00
  vertex  0.782800E+01  0.119983E+02  0.660800E+00
  vertex  0.773150E+01  0.119982E+02 -0.131650E+01
 endloop
endfacet
facet normal  0.809313E+00 -0.585800E+00 -0.430246E-01
 outer loop
  vertex  0.108944E+02  0.168341E+02 -0.146360E+01
  vertex  0.178813E+02  0.265168E+02 -0.187120E+01
  vertex  0.180307E+02  0.265168E+02  0.939100E+00
 endloop
endfacet
facet normal  0.809138E+00 -0.586186E+00 -0.410052E-01
 outer loop
  vertex  0.180307E+02  0.265167E+02  0.939100E+00
  vertex  0.110057E+02  0.168341E+02  0.734600E+00
  vertex  0.108943E+02  0.168341E+02 -0.146360E+01
 endloop
endfacet
facet normal  0.862589E+00 -0.503702E+00 -0.471637E-01
 outer loop
  vertex  0.178813E+02  0.265168E+02 -0.187120E+01
  vertex  0.247557E+02  0.383280E+02 -0.228570E+01
  vertex  0.249434E+02  0.383280E+02  0.114720E+01
 endloop
endfacet
facet normal  0.862497E+00 -0.503980E+00 -0.458662E-01
 outer loop
  vertex  0.249433E+02  0.383279E+02  0.114710E+01
  vertex  0.180307E+02  0.265168E+02  0.939100E+00
  vertex  0.178812E+02  0.265167E+02 -0.187110E+01
 endloop
endfacet
facet normal  0.984986E+00 -0.164041E+00 -0.537836E-01
 outer loop
  vertex  0.247557E+02  0.383280E+02 -0.228570E+01
  vertex  0.263284E+02  0.478155E+02 -0.242050E+01
  vertex  0.265269E+02  0.478155E+02  0.121480E+01
 endloop
endfacet
facet normal  0.984987E+00 -0.164006E+00 -0.538797E-01
 outer loop
  vertex  0.265268E+02  0.478154E+02  0.121480E+01
  vertex  0.249434E+02  0.383280E+02  0.114720E+01
  vertex  0.247556E+02  0.383279E+02 -0.228570E+01
 endloop
endfacet
facet normal  0.713694E+00  0.699438E+00 -0.377721E-01
 outer loop
  vertex  0.263284E+02  0.478155E+02 -0.242050E+01
  vertex  0.213570E+02  0.528995E+02 -0.221170E+01
  vertex  0.215328E+02  0.528995E+02  0.111000E+01
 endloop
endfacet
facet normal  0.713246E+00  0.699829E+00 -0.389842E-01
 outer loop
  vertex  0.215328E+02  0.528995E+02  0.111000E+01
  vertex  0.265269E+02  0.478155E+02  0.121480E+01
  vertex  0.263283E+02  0.478154E+02 -0.242050E+01
 endloop
endfacet
facet normal  0.324358E+00  0.945794E+00 -0.163030E-01
 outer loop
  vertex  0.213570E+02  0.528995E+02 -0.221170E+01
  vertex  0.147186E+02  0.551808E+02 -0.194070E+01
  vertex  0.148651E+02  0.551808E+02  0.974000E+00
 endloop
endfacet
facet normal  0.323980E+00  0.945909E+00 -0.171471E-01
 outer loop
  vertex  0.148650E+02  0.551808E+02  0.973900E+00
  vertex  0.215328E+02  0.528995E+02  0.111000E+01
  vertex  0.213570E+02  0.528995E+02 -0.221160E+01
 endloop
endfacet
facet normal  0.337497E+00  0.941185E+00 -0.163534E-01
 outer loop
  vertex  0.147186E+02  0.551808E+02 -0.194070E+01
  vertex  0.112222E+02  0.564356E+02 -0.188120E+01
  vertex  0.113591E+02  0.564356E+02  0.944100E+00
 endloop
endfacet
facet normal  0.337049E+00  0.941335E+00 -0.169409E-01
 outer loop
  vertex  0.113591E+02  0.564356E+02  0.944100E+00
  vertex  0.148651E+02  0.551808E+02  0.974000E+00
  vertex  0.147186E+02  0.551808E+02 -0.194070E+01
 endloop
endfacet
facet normal  0.958380E+00  0.281726E+00 -0.462315E-01
 outer loop
  vertex  0.112222E+02  0.564356E+02 -0.188120E+01
  vertex  0.109557E+02  0.573211E+02 -0.200970E+01
  vertex  0.111013E+02  0.573211E+02  0.100860E+01
 endloop
endfacet
facet normal  0.958182E+00  0.282369E+00 -0.464303E-01
 outer loop
  vertex  0.111013E+02  0.573210E+02  0.100850E+01
  vertex  0.113591E+02  0.564356E+02  0.944100E+00
  vertex  0.112222E+02  0.564356E+02 -0.188110E+01
 endloop
endfacet
facet normal  0.618183E+00 -0.785462E+00 -0.299723E-01
 outer loop
  vertex  0.109557E+02  0.573211E+02 -0.200970E+01
  vertex  0.117600E+02  0.579599E+02 -0.216150E+01
  vertex  0.119174E+02  0.579599E+02  0.108490E+01
 endloop
endfacet
facet normal  0.617770E+00 -0.785794E+00 -0.297954E-01
 outer loop
  vertex  0.119174E+02  0.579598E+02  0.108490E+01
  vertex  0.111013E+02  0.573211E+02  0.100860E+01
  vertex  0.109556E+02  0.573210E+02 -0.200970E+01
 endloop
endfacet
facet normal  0.804416E+00 -0.592780E+00 -0.390774E-01
 outer loop
  vertex  0.117600E+02  0.579599E+02 -0.216150E+01
  vertex  0.121082E+02  0.584363E+02 -0.222040E+01
  vertex  0.122702E+02  0.584363E+02  0.111440E+01
 endloop
endfacet
facet normal  0.804192E+00 -0.593090E+00 -0.389740E-01
 outer loop
  vertex  0.122701E+02  0.584362E+02  0.111440E+01
  vertex  0.119174E+02  0.579599E+02  0.108490E+01
  vertex  0.117600E+02  0.579598E+02 -0.216140E+01
 endloop
endfacet
facet normal  0.754386E+00  0.655410E+00 -0.366087E-01
 outer loop
  vertex  0.121082E+02  0.584363E+02 -0.222040E+01
  vertex  0.118296E+02  0.587596E+02 -0.217330E+01
  vertex  0.119880E+02  0.587596E+02  0.109080E+01
 endloop
endfacet
facet normal  0.754076E+00  0.655764E+00 -0.366514E-01
 outer loop
  vertex  0.119879E+02  0.587596E+02  0.109080E+01
  vertex  0.122702E+02  0.584363E+02  0.111440E+01
  vertex  0.121082E+02  0.584362E+02 -0.222040E+01
 endloop
endfacet
facet normal  0.200604E+00  0.979625E+00 -0.967296E-02
 outer loop
  vertex  0.118296E+02  0.587596E+02 -0.217330E+01
  vertex  0.109485E+02  0.589415E+02 -0.202430E+01
  vertex  0.110951E+02  0.589415E+02  0.101600E+01
 endloop
endfacet
facet normal  0.200391E+00  0.979668E+00 -0.972453E-02
 outer loop
  vertex  0.110951E+02  0.589415E+02  0.101600E+01
  vertex  0.119880E+02  0.587596E+02  0.109080E+01
  vertex  0.118296E+02  0.587596E+02 -0.217330E+01
 endloop
endfacet
facet normal  0.158091E+00  0.987396E+00 -0.754350E-02
 outer loop
  vertex  0.109485E+02  0.589415E+02 -0.202430E+01
  vertex  0.977070E+01  0.591316E+02 -0.182520E+01
  vertex  0.990150E+01  0.591316E+02  0.916000E+00
 endloop
endfacet
facet normal  0.157807E+00  0.987441E+00 -0.761450E-02
 outer loop
  vertex  0.990140E+01  0.591315E+02  0.916000E+00
  vertex  0.110951E+02  0.589415E+02  0.101600E+01
  vertex  0.109484E+02  0.589415E+02 -0.202430E+01
 endloop
endfacet
facet normal  0.401482E+00  0.915671E+00 -0.189586E-01
 outer loop
  vertex  0.977070E+01  0.591316E+02 -0.182520E+01
  vertex  0.878350E+01  0.595679E+02 -0.165820E+01
  vertex  0.890110E+01  0.595679E+02  0.832200E+00
 endloop
endfacet
facet normal  0.401040E+00  0.915860E+00 -0.191699E-01
 outer loop
  vertex  0.890110E+01  0.595679E+02  0.832100E+00
  vertex  0.990150E+01  0.591316E+02  0.916000E+00
  vertex  0.977070E+01  0.591315E+02 -0.182510E+01
 endloop
endfacet
facet normal  0.859603E+00  0.509366E+00 -0.403672E-01
 outer loop
  vertex  0.878350E+01  0.595679E+02 -0.165820E+01
  vertex  0.830960E+01  0.603740E+02 -0.157810E+01
  vertex  0.842090E+01  0.603740E+02  0.792000E+00
 endloop
endfacet
facet normal  0.859298E+00  0.509861E+00 -0.406119E-01
 outer loop
  vertex  0.842090E+01  0.603740E+02  0.791900E+00
  vertex  0.890110E+01  0.595679E+02  0.832200E+00
  vertex  0.878340E+01  0.595679E+02 -0.165820E+01
 endloop
endfacet
facet normal  0.991230E+00  0.123709E+00 -0.464732E-01
 outer loop
  vertex  0.830960E+01  0.603740E+02 -0.157810E+01
  vertex  0.819000E+01  0.613399E+02 -0.155790E+01
  vertex  0.829970E+01  0.613399E+02  0.781900E+00
 endloop
endfacet
facet normal  0.991190E+00  0.123985E+00 -0.465904E-01
 outer loop
  vertex  0.829960E+01  0.613399E+02  0.781800E+00
  vertex  0.842090E+01  0.603740E+02  0.792000E+00
  vertex  0.830950E+01  0.603740E+02 -0.157800E+01
 endloop
endfacet
facet normal  0.993684E+00  0.102089E+00 -0.465765E-01
 outer loop
  vertex  0.819000E+01  0.613399E+02 -0.155790E+01
  vertex  0.810230E+01  0.622011E+02 -0.154130E+01
  vertex  0.821080E+01  0.622011E+02  0.773500E+00
 endloop
endfacet
facet normal  0.993677E+00  0.102132E+00 -0.466321E-01
 outer loop
  vertex  0.821080E+01  0.622010E+02  0.773500E+00
  vertex  0.829970E+01  0.613399E+02  0.781900E+00
  vertex  0.818990E+01  0.613399E+02 -0.155780E+01
 endloop
endfacet
facet normal  0.312154E+00  0.949919E+00 -0.146134E-01
 outer loop
  vertex  0.810230E+01  0.622011E+02 -0.154130E+01
  vertex  0.634020E+01  0.627853E+02 -0.120610E+01
  vertex  0.642500E+01  0.627853E+02  0.605300E+00
 endloop
endfacet
facet normal  0.312138E+00  0.949923E+00 -0.146849E-01
 outer loop
  vertex  0.642500E+01  0.627853E+02  0.605300E+00
  vertex  0.821080E+01  0.622011E+02  0.773500E+00
  vertex  0.810220E+01  0.622010E+02 -0.154130E+01
 endloop
endfacet
facet normal  0.335454E-01  0.999436E+00 -0.157236E-02
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.642500E+01  0.627853E+02  0.605300E+00
  vertex  0.634010E+01  0.627853E+02 -0.120600E+01
 endloop
endfacet
facet normal -0.251065E+00 -0.966117E+00 -0.598665E-01
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.134572E+02  0.442610E+01  0.123900E+01
  vertex  0.125932E+02  0.442610E+01  0.486240E+01
 endloop
endfacet
facet normal  0.914292E+00  0.341245E+00  0.218225E+00
 outer loop
  vertex  0.134572E+02  0.442610E+01  0.123900E+01
  vertex  0.126402E+02  0.666400E+01  0.116250E+01
  vertex  0.118288E+02  0.666400E+01  0.456200E+01
 endloop
endfacet
facet normal  0.914237E+00  0.341546E+00  0.217984E+00
 outer loop
  vertex  0.118288E+02  0.666400E+01  0.456190E+01
  vertex  0.125932E+02  0.442610E+01  0.486240E+01
  vertex  0.134572E+02  0.442600E+01  0.123890E+01
 endloop
endfacet
facet normal  0.581899E+00  0.801248E+00  0.139265E+00
 outer loop
  vertex  0.126402E+02  0.666400E+01  0.116250E+01
  vertex  0.865070E+01  0.962570E+01  0.792200E+00
  vertex  0.809620E+01  0.962570E+01  0.310910E+01
 endloop
endfacet
facet normal  0.581798E+00  0.801394E+00  0.138848E+00
 outer loop
  vertex  0.809610E+01  0.962560E+01  0.310910E+01
  vertex  0.118288E+02  0.666400E+01  0.456200E+01
  vertex  0.126401E+02  0.666400E+01  0.116250E+01
 endloop
endfacet
facet normal  0.916885E+00  0.330339E+00  0.224049E+00
 outer loop
  vertex  0.865070E+01  0.962570E+01  0.792200E+00
  vertex  0.782800E+01  0.119983E+02  0.660800E+00
  vertex  0.735580E+01  0.119983E+02  0.259320E+01
 endloop
endfacet
facet normal  0.916764E+00  0.333808E+00  0.219354E+00
 outer loop
  vertex  0.735580E+01  0.119982E+02  0.259310E+01
  vertex  0.809620E+01  0.962570E+01  0.310910E+01
  vertex  0.865060E+01  0.962560E+01  0.792200E+00
 endloop
endfacet
facet normal  0.815166E+00 -0.538902E+00  0.212339E+00
 outer loop
  vertex  0.782800E+01  0.119983E+02  0.660800E+00
  vertex  0.110057E+02  0.168341E+02  0.734600E+00
  vertex  0.104461E+02  0.168341E+02  0.288290E+01
 endloop
endfacet
facet normal  0.820052E+00 -0.536053E+00  0.200405E+00
 outer loop
  vertex  0.104461E+02  0.168341E+02  0.288280E+01
  vertex  0.735580E+01  0.119983E+02  0.259320E+01
  vertex  0.782800E+01  0.119982E+02  0.660700E+00
 endloop
endfacet
facet normal  0.786987E+00 -0.575663E+00  0.221955E+00
 outer loop
  vertex  0.110057E+02  0.168341E+02  0.734600E+00
  vertex  0.180307E+02  0.265168E+02  0.939100E+00
  vertex  0.172561E+02  0.265168E+02  0.368560E+01
 endloop
endfacet
facet normal  0.792219E+00 -0.574286E+00  0.206361E+00
 outer loop
  vertex  0.172560E+02  0.265167E+02  0.368560E+01
  vertex  0.104461E+02  0.168341E+02  0.288290E+01
  vertex  0.110057E+02  0.168341E+02  0.734600E+00
 endloop
endfacet
facet normal  0.834606E+00 -0.492803E+00  0.246125E+00
 outer loop
  vertex  0.180307E+02  0.265168E+02  0.939100E+00
  vertex  0.249434E+02  0.383280E+02  0.114720E+01
  vertex  0.239541E+02  0.383280E+02  0.450190E+01
 endloop
endfacet
facet normal  0.838111E+00 -0.491618E+00  0.236392E+00
 outer loop
  vertex  0.239540E+02  0.383279E+02  0.450190E+01
  vertex  0.172561E+02  0.265168E+02  0.368560E+01
  vertex  0.180307E+02  0.265167E+02  0.939100E+00
 endloop
endfacet
facet normal  0.946829E+00 -0.160018E+00  0.279123E+00
 outer loop
  vertex  0.249434E+02  0.383280E+02  0.114720E+01
  vertex  0.265269E+02  0.478155E+02  0.121480E+01
  vertex  0.254796E+02  0.478155E+02  0.476740E+01
 endloop
endfacet
facet normal  0.946806E+00 -0.160049E+00  0.279181E+00
 outer loop
  vertex  0.254796E+02  0.478154E+02  0.476730E+01
  vertex  0.239541E+02  0.383280E+02  0.450190E+01
  vertex  0.249433E+02  0.383279E+02  0.114710E+01
 endloop
endfacet
facet normal  0.697487E+00  0.689199E+00  0.196256E+00
 outer loop
  vertex  0.265269E+02  0.478155E+02  0.121480E+01
  vertex  0.215328E+02  0.528995E+02  0.111000E+01
  vertex  0.206194E+02  0.528995E+02  0.435620E+01
 endloop
endfacet
facet normal  0.698956E+00  0.684850E+00  0.206012E+00
 outer loop
  vertex  0.206194E+02  0.528995E+02  0.435620E+01
  vertex  0.254796E+02  0.478155E+02  0.476740E+01
  vertex  0.265268E+02  0.478154E+02  0.121480E+01
 endloop
endfacet
facet normal  0.321072E+00  0.943384E+00  0.833084E-01
 outer loop
  vertex  0.215328E+02  0.528995E+02  0.111000E+01
  vertex  0.148651E+02  0.551808E+02  0.974000E+00
  vertex  0.141260E+02  0.551808E+02  0.382250E+01
 endloop
endfacet
facet normal  0.323422E+00  0.941869E+00  0.910029E-01
 outer loop
  vertex  0.141260E+02  0.551808E+02  0.382240E+01
  vertex  0.206194E+02  0.528995E+02  0.435620E+01
  vertex  0.215328E+02  0.528995E+02  0.111000E+01
 endloop
endfacet
facet normal  0.335226E+00  0.938591E+00  0.816726E-01
 outer loop
  vertex  0.148651E+02  0.551808E+02  0.974000E+00
  vertex  0.113591E+02  0.564356E+02  0.944100E+00
  vertex  0.106864E+02  0.564356E+02  0.370520E+01
 endloop
endfacet
facet normal  0.338742E+00  0.936766E+00  0.878783E-01
 outer loop
  vertex  0.106864E+02  0.564356E+02  0.370510E+01
  vertex  0.141260E+02  0.551808E+02  0.382250E+01
  vertex  0.148650E+02  0.551808E+02  0.973900E+00
 endloop
endfacet
facet normal  0.939683E+00  0.257146E+00  0.225547E+00
 outer loop
  vertex  0.113591E+02  0.564356E+02  0.944100E+00
  vertex  0.111013E+02  0.573211E+02  0.100860E+01
  vertex  0.103933E+02  0.573211E+02  0.395830E+01
 endloop
endfacet
facet normal  0.941687E+00  0.246150E+00  0.229428E+00
 outer loop
  vertex  0.103933E+02  0.573210E+02  0.395830E+01
  vertex  0.106864E+02  0.564356E+02  0.370520E+01
  vertex  0.113591E+02  0.564356E+02  0.944100E+00
 endloop
endfacet
facet normal  0.601415E+00 -0.785661E+00  0.145041E+00
 outer loop
  vertex  0.111013E+02  0.573211E+02  0.100860E+01
  vertex  0.119174E+02  0.579599E+02  0.108490E+01
  vertex  0.111523E+02  0.579599E+02  0.425740E+01
 endloop
endfacet
facet normal  0.603109E+00 -0.784409E+00  0.144782E+00
 outer loop
  vertex  0.111522E+02  0.579598E+02  0.425740E+01
  vertex  0.103933E+02  0.573211E+02  0.395830E+01
  vertex  0.111013E+02  0.573210E+02  0.100850E+01
 endloop
endfacet
facet normal  0.783445E+00 -0.591910E+00  0.189358E+00
 outer loop
  vertex  0.119174E+02  0.579599E+02  0.108490E+01
  vertex  0.122702E+02  0.584363E+02  0.111440E+01
  vertex  0.114825E+02  0.584363E+02  0.437340E+01
 endloop
endfacet
facet normal  0.784783E+00 -0.590159E+00  0.189282E+00
 outer loop
  vertex  0.114825E+02  0.584362E+02  0.437340E+01
  vertex  0.111523E+02  0.579599E+02  0.425740E+01
  vertex  0.119174E+02  0.579598E+02  0.108490E+01
 endloop
endfacet
facet normal  0.734985E+00  0.654486E+00  0.177329E+00
 outer loop
  vertex  0.122702E+02  0.584363E+02  0.111440E+01
  vertex  0.119880E+02  0.587596E+02  0.109080E+01
  vertex  0.112184E+02  0.587596E+02  0.428060E+01
 endloop
endfacet
facet normal  0.736447E+00  0.652669E+00  0.177957E+00
 outer loop
  vertex  0.112184E+02  0.587596E+02  0.428060E+01
  vertex  0.114825E+02  0.584363E+02  0.437340E+01
  vertex  0.122701E+02  0.584362E+02  0.111440E+01
 endloop
endfacet
facet normal  0.195625E+00  0.979557E+00  0.468981E-01
 outer loop
  vertex  0.119880E+02  0.587596E+02  0.109080E+01
  vertex  0.110951E+02  0.589415E+02  0.101600E+01
  vertex  0.103828E+02  0.589415E+02  0.398720E+01
 endloop
endfacet
facet normal  0.196544E+00  0.979348E+00  0.474138E-01
 outer loop
  vertex  0.103828E+02  0.589415E+02  0.398720E+01
  vertex  0.112184E+02  0.587596E+02  0.428060E+01
  vertex  0.119879E+02  0.587596E+02  0.109080E+01
 endloop
endfacet
facet normal  0.154186E+00  0.987364E+00  0.365882E-01
 outer loop
  vertex  0.110951E+02  0.589415E+02  0.101600E+01
  vertex  0.990150E+01  0.591316E+02  0.916000E+00
  vertex  0.926580E+01  0.591316E+02  0.359490E+01
 endloop
endfacet
facet normal  0.154882E+00  0.987235E+00  0.371306E-01
 outer loop
  vertex  0.926580E+01  0.591315E+02  0.359480E+01
  vertex  0.103828E+02  0.589415E+02  0.398720E+01
  vertex  0.110951E+02  0.589415E+02  0.101600E+01
 endloop
endfacet
facet normal  0.391588E+00  0.915535E+00  0.919481E-01
 outer loop
  vertex  0.990150E+01  0.591316E+02  0.916000E+00
  vertex  0.890110E+01  0.595679E+02  0.832200E+00
  vertex  0.832960E+01  0.595679E+02  0.326610E+01
 endloop
endfacet
facet normal  0.393451E+00  0.914597E+00  0.933168E-01
 outer loop
  vertex  0.832960E+01  0.595679E+02  0.326600E+01
  vertex  0.926580E+01  0.591316E+02  0.359490E+01
  vertex  0.990140E+01  0.591315E+02  0.916000E+00
 endloop
endfacet
facet normal  0.838196E+00  0.509076E+00  0.195626E+00
 outer loop
  vertex  0.890110E+01  0.595679E+02  0.832200E+00
  vertex  0.842090E+01  0.603740E+02  0.792000E+00
  vertex  0.788030E+01  0.603740E+02  0.310830E+01
 endloop
endfacet
facet normal  0.839422E+00  0.506481E+00  0.197095E+00
 outer loop
  vertex  0.788030E+01  0.603740E+02  0.310820E+01
  vertex  0.832960E+01  0.595679E+02  0.326610E+01
  vertex  0.890110E+01  0.595679E+02  0.832100E+00
 endloop
endfacet
facet normal  0.966431E+00  0.123622E+00  0.225230E+00
 outer loop
  vertex  0.842090E+01  0.603740E+02  0.792000E+00
  vertex  0.829970E+01  0.613399E+02  0.781900E+00
  vertex  0.776680E+01  0.613399E+02  0.306850E+01
 endloop
endfacet
facet normal  0.966442E+00  0.122958E+00  0.225548E+00
 outer loop
  vertex  0.776670E+01  0.613399E+02  0.306850E+01
  vertex  0.788030E+01  0.603740E+02  0.310830E+01
  vertex  0.842090E+01  0.603740E+02  0.791900E+00
 endloop
endfacet
facet normal  0.968814E+00  0.102210E+00  0.225727E+00
 outer loop
  vertex  0.829970E+01  0.613399E+02  0.781900E+00
  vertex  0.821080E+01  0.622011E+02  0.773500E+00
  vertex  0.768370E+01  0.622011E+02  0.303580E+01
 endloop
endfacet
facet normal  0.968824E+00  0.102094E+00  0.225735E+00
 outer loop
  vertex  0.768370E+01  0.622010E+02  0.303570E+01
  vertex  0.776680E+01  0.613399E+02  0.306850E+01
  vertex  0.829960E+01  0.613399E+02  0.781800E+00
 endloop
endfacet
facet normal  0.304100E+00  0.949997E+00  0.709181E-01
 outer loop
  vertex  0.821080E+01  0.622011E+02  0.773500E+00
  vertex  0.642500E+01  0.627853E+02  0.605300E+00
  vertex  0.601250E+01  0.627852E+02  0.237550E+01
 endloop
endfacet
facet normal  0.303999E+00  0.950039E+00  0.707880E-01
 outer loop
  vertex  0.601240E+01  0.627851E+02  0.237540E+01
  vertex  0.768370E+01  0.622011E+02  0.303580E+01
  vertex  0.821080E+01  0.622010E+02  0.773500E+00
 endloop
endfacet
facet normal  0.326745E-01  0.999437E+00  0.767213E-02
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.601250E+01  0.627852E+02  0.237550E+01
  vertex  0.642500E+01  0.627853E+02  0.605300E+00
 endloop
endfacet
facet normal -0.226857E+00 -0.966180E+00 -0.122608E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.125932E+02  0.442610E+01  0.486240E+01
  vertex  0.108174E+02  0.442610E+01  0.814810E+01
 endloop
endfacet
facet normal  0.826363E+00  0.342286E+00  0.447173E+00
 outer loop
  vertex  0.125932E+02  0.442610E+01  0.486240E+01
  vertex  0.118288E+02  0.666400E+01  0.456200E+01
  vertex  0.101607E+02  0.666400E+01  0.764460E+01
 endloop
endfacet
facet normal  0.826372E+00  0.343028E+00  0.446588E+00
 outer loop
  vertex  0.101606E+02  0.666400E+01  0.764450E+01
  vertex  0.108174E+02  0.442610E+01  0.814810E+01
  vertex  0.125931E+02  0.442600E+01  0.486240E+01
 endloop
endfacet
facet normal  0.525229E+00  0.801789E+00  0.285077E+00
 outer loop
  vertex  0.118288E+02  0.666400E+01  0.456200E+01
  vertex  0.809620E+01  0.962570E+01  0.310910E+01
  vertex  0.695590E+01  0.962570E+01  0.521000E+01
 endloop
endfacet
facet normal  0.525271E+00  0.802061E+00  0.284233E+00
 outer loop
  vertex  0.695590E+01  0.962560E+01  0.521000E+01
  vertex  0.101607E+02  0.666400E+01  0.764460E+01
  vertex  0.118288E+02  0.666400E+01  0.456190E+01
 endloop
endfacet
facet normal  0.814166E+00  0.354124E+00  0.460141E+00
 outer loop
  vertex  0.809620E+01  0.962570E+01  0.310910E+01
  vertex  0.735580E+01  0.119983E+02  0.259320E+01
  vertex  0.636540E+01  0.119983E+02  0.434560E+01
 endloop
endfacet
facet normal  0.818126E+00  0.365427E+00  0.443996E+00
 outer loop
  vertex  0.636530E+01  0.119982E+02  0.434560E+01
  vertex  0.695590E+01  0.962570E+01  0.521000E+01
  vertex  0.809610E+01  0.962560E+01  0.310910E+01
 endloop
endfacet
facet normal  0.731701E+00 -0.495624E+00  0.467943E+00
 outer loop
  vertex  0.735580E+01  0.119983E+02  0.259320E+01
  vertex  0.104461E+02  0.168341E+02  0.288290E+01
  vertex  0.920030E+01  0.168341E+02  0.483090E+01
 endloop
endfacet
facet normal  0.759670E+00 -0.488430E+00  0.429345E+00
 outer loop
  vertex  0.920030E+01  0.168341E+02  0.483090E+01
  vertex  0.636540E+01  0.119983E+02  0.434560E+01
  vertex  0.735580E+01  0.119982E+02  0.259310E+01
 endloop
endfacet
facet normal  0.684980E+00 -0.523743E+00  0.506454E+00
 outer loop
  vertex  0.104461E+02  0.168341E+02  0.288290E+01
  vertex  0.172561E+02  0.265168E+02  0.368560E+01
  vertex  0.154147E+02  0.265168E+02  0.617610E+01
 endloop
endfacet
facet normal  0.717443E+00 -0.524192E+00  0.458801E+00
 outer loop
  vertex  0.154146E+02  0.265167E+02  0.617600E+01
  vertex  0.920030E+01  0.168341E+02  0.483090E+01
  vertex  0.104461E+02  0.168341E+02  0.288280E+01
 endloop
endfacet
facet normal  0.702520E+00 -0.437200E+00  0.561536E+00
 outer loop
  vertex  0.172561E+02  0.265168E+02  0.368560E+01
  vertex  0.239541E+02  0.383280E+02  0.450190E+01
  vertex  0.215225E+02  0.383280E+02  0.754400E+01
 endloop
endfacet
facet normal  0.723585E+00 -0.436136E+00  0.534986E+00
 outer loop
  vertex  0.215224E+02  0.383279E+02  0.754400E+01
  vertex  0.154147E+02  0.265168E+02  0.617610E+01
  vertex  0.172560E+02  0.265167E+02  0.368560E+01
 endloop
endfacet
facet normal  0.772749E+00 -0.141565E+00  0.618723E+00
 outer loop
  vertex  0.239541E+02  0.383280E+02  0.450190E+01
  vertex  0.254796E+02  0.478155E+02  0.476740E+01
  vertex  0.229003E+02  0.478155E+02  0.798880E+01
 endloop
endfacet
facet normal  0.773305E+00 -0.141273E+00  0.618095E+00
 outer loop
  vertex  0.229002E+02  0.478154E+02  0.798880E+01
  vertex  0.215225E+02  0.383280E+02  0.754400E+01
  vertex  0.239540E+02  0.383279E+02  0.450190E+01
 endloop
endfacet
facet normal  0.622339E+00  0.632266E+00  0.461448E+00
 outer loop
  vertex  0.254796E+02  0.478155E+02  0.476740E+01
  vertex  0.206194E+02  0.528995E+02  0.435620E+01
  vertex  0.184368E+02  0.528995E+02  0.729980E+01
 endloop
endfacet
facet normal  0.618497E+00  0.610128E+00  0.495182E+00
 outer loop
  vertex  0.184368E+02  0.528995E+02  0.729970E+01
  vertex  0.229003E+02  0.478155E+02  0.798880E+01
  vertex  0.254796E+02  0.478154E+02  0.476730E+01
 endloop
endfacet
facet normal  0.310198E+00  0.929553E+00  0.199269E+00
 outer loop
  vertex  0.206194E+02  0.528995E+02  0.435620E+01
  vertex  0.141260E+02  0.551808E+02  0.382250E+01
  vertex  0.124667E+02  0.551808E+02  0.640550E+01
 endloop
endfacet
facet normal  0.316155E+00  0.919289E+00  0.234420E+00
 outer loop
  vertex  0.124666E+02  0.551808E+02  0.640540E+01
  vertex  0.184368E+02  0.528995E+02  0.729980E+01
  vertex  0.206194E+02  0.528995E+02  0.435620E+01
 endloop
endfacet
facet normal  0.330975E+00  0.924795E+00  0.187642E+00
 outer loop
  vertex  0.141260E+02  0.551808E+02  0.382250E+01
  vertex  0.106864E+02  0.564356E+02  0.370520E+01
  vertex  0.926690E+01  0.564356E+02  0.620900E+01
 endloop
endfacet
facet normal  0.344244E+00  0.912468E+00  0.221131E+00
 outer loop
  vertex  0.926690E+01  0.564356E+02  0.620900E+01
  vertex  0.124667E+02  0.551808E+02  0.640550E+01
  vertex  0.141260E+02  0.551808E+02  0.382240E+01
 endloop
endfacet
facet normal  0.867785E+00  0.152006E+00  0.473121E+00
 outer loop
  vertex  0.106864E+02  0.564356E+02  0.370520E+01
  vertex  0.103933E+02  0.573211E+02  0.395830E+01
  vertex  0.893500E+01  0.573210E+02  0.663310E+01
 endloop
endfacet
facet normal  0.866436E+00  0.895217E-01  0.491196E+00
 outer loop
  vertex  0.893500E+01  0.573209E+02  0.663310E+01
  vertex  0.926690E+01  0.564356E+02  0.620900E+01
  vertex  0.106864E+02  0.564356E+02  0.370510E+01
 endloop
endfacet
facet normal  0.543587E+00 -0.784997E+00  0.297141E+00
 outer loop
  vertex  0.103933E+02  0.573211E+02  0.395830E+01
  vertex  0.111523E+02  0.579599E+02  0.425740E+01
  vertex  0.957970E+01  0.579599E+02  0.713430E+01
 endloop
endfacet
facet normal  0.545367E+00 -0.783689E+00  0.297334E+00
 outer loop
  vertex  0.957970E+01  0.579598E+02  0.713430E+01
  vertex  0.893500E+01  0.573210E+02  0.663310E+01
  vertex  0.103933E+02  0.573210E+02  0.395830E+01
 endloop
endfacet
facet normal  0.710066E+00 -0.586892E+00  0.389056E+00
 outer loop
  vertex  0.111523E+02  0.579599E+02  0.425740E+01
  vertex  0.114825E+02  0.584363E+02  0.437340E+01
  vertex  0.986330E+01  0.584363E+02  0.732860E+01
 endloop
endfacet
facet normal  0.712759E+00 -0.583248E+00  0.389611E+00
 outer loop
  vertex  0.986330E+01  0.584362E+02  0.732850E+01
  vertex  0.957970E+01  0.579599E+02  0.713430E+01
  vertex  0.111522E+02  0.579598E+02  0.425740E+01
 endloop
endfacet
facet normal  0.667033E+00  0.649600E+00  0.364809E+00
 outer loop
  vertex  0.114825E+02  0.584363E+02  0.437340E+01
  vertex  0.112184E+02  0.587596E+02  0.428060E+01
  vertex  0.963640E+01  0.587596E+02  0.717320E+01
 endloop
endfacet
facet normal  0.669391E+00  0.646073E+00  0.366748E+00
 outer loop
  vertex  0.963640E+01  0.587596E+02  0.717320E+01
  vertex  0.986330E+01  0.584363E+02  0.732860E+01
  vertex  0.114825E+02  0.584362E+02  0.437340E+01
 endloop
endfacet
facet normal  0.178974E+00  0.979035E+00  0.972592E-01
 outer loop
  vertex  0.112184E+02  0.587596E+02  0.428060E+01
  vertex  0.103828E+02  0.589415E+02  0.398720E+01
  vertex  0.891870E+01  0.589415E+02  0.668140E+01
 endloop
endfacet
facet normal  0.180408E+00  0.978631E+00  0.986672E-01
 outer loop
  vertex  0.891870E+01  0.589415E+02  0.668130E+01
  vertex  0.963640E+01  0.587596E+02  0.717320E+01
  vertex  0.112184E+02  0.587596E+02  0.428060E+01
 endloop
endfacet
facet normal  0.141291E+00  0.987047E+00  0.759966E-01
 outer loop
  vertex  0.103828E+02  0.589415E+02  0.398720E+01
  vertex  0.926580E+01  0.591316E+02  0.359490E+01
  vertex  0.795920E+01  0.591316E+02  0.602410E+01
 endloop
endfacet
facet normal  0.142376E+00  0.986784E+00  0.773709E-01
 outer loop
  vertex  0.795910E+01  0.591315E+02  0.602400E+01
  vertex  0.891870E+01  0.589415E+02  0.668140E+01
  vertex  0.103828E+02  0.589415E+02  0.398720E+01
 endloop
endfacet
facet normal  0.358756E+00  0.913695E+00  0.190936E+00
 outer loop
  vertex  0.926580E+01  0.591316E+02  0.359490E+01
  vertex  0.832960E+01  0.595679E+02  0.326610E+01
  vertex  0.715500E+01  0.595679E+02  0.547310E+01
 endloop
endfacet
facet normal  0.361519E+00  0.911872E+00  0.194406E+00
 outer loop
  vertex  0.715500E+01  0.595679E+02  0.547310E+01
  vertex  0.795920E+01  0.591316E+02  0.602410E+01
  vertex  0.926580E+01  0.591315E+02  0.359480E+01
 endloop
endfacet
facet normal  0.763205E+00  0.504440E+00  0.403804E+00
 outer loop
  vertex  0.832960E+01  0.595679E+02  0.326610E+01
  vertex  0.788030E+01  0.603740E+02  0.310830E+01
  vertex  0.676900E+01  0.603740E+02  0.520870E+01
 endloop
endfacet
facet normal  0.764681E+00  0.499649E+00  0.406957E+00
 outer loop
  vertex  0.676900E+01  0.603740E+02  0.520870E+01
  vertex  0.715500E+01  0.595679E+02  0.547310E+01
  vertex  0.832960E+01  0.595679E+02  0.326600E+01
 endloop
endfacet
facet normal  0.877596E+00  0.122225E+00  0.463559E+00
 outer loop
  vertex  0.788030E+01  0.603740E+02  0.310830E+01
  vertex  0.776680E+01  0.613399E+02  0.306850E+01
  vertex  0.667160E+01  0.613399E+02  0.514190E+01
 endloop
endfacet
facet normal  0.877455E+00  0.120677E+00  0.464230E+00
 outer loop
  vertex  0.667150E+01  0.613399E+02  0.514190E+01
  vertex  0.676900E+01  0.603740E+02  0.520870E+01
  vertex  0.788030E+01  0.603740E+02  0.310820E+01
 endloop
endfacet
facet normal  0.879572E+00  0.102513E+00  0.464591E+00
 outer loop
  vertex  0.776680E+01  0.613399E+02  0.306850E+01
  vertex  0.768370E+01  0.622011E+02  0.303580E+01
  vertex  0.660020E+01  0.622011E+02  0.508710E+01
 endloop
endfacet
facet normal  0.879586E+00  0.102497E+00  0.464568E+00
 outer loop
  vertex  0.660020E+01  0.622010E+02  0.508710E+01
  vertex  0.667160E+01  0.613399E+02  0.514190E+01
  vertex  0.776670E+01  0.613399E+02  0.306850E+01
 endloop
endfacet
facet normal  0.274843E+00  0.950468E+00  0.145161E+00
 outer loop
  vertex  0.768370E+01  0.622011E+02  0.303580E+01
  vertex  0.601250E+01  0.627852E+02  0.237550E+01
  vertex  0.516470E+01  0.627852E+02  0.398070E+01
 endloop
endfacet
facet normal  0.274834E+00  0.950478E+00  0.145115E+00
 outer loop
  vertex  0.516470E+01  0.627851E+02  0.398070E+01
  vertex  0.660020E+01  0.622011E+02  0.508710E+01
  vertex  0.768370E+01  0.622010E+02  0.303570E+01
 endloop
endfacet
facet normal  0.295768E-01  0.999441E+00  0.155567E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.516470E+01  0.627852E+02  0.398070E+01
  vertex  0.601240E+01  0.627851E+02  0.237540E+01
 endloop
endfacet
facet normal -0.186621E+00 -0.966508E+00 -0.176170E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.108174E+02  0.442610E+01  0.814810E+01
  vertex  0.827360E+01  0.442610E+01  0.108428E+02
 endloop
endfacet
facet normal  0.682114E+00  0.345198E+00  0.644638E+00
 outer loop
  vertex  0.108174E+02  0.442610E+01  0.814810E+01
  vertex  0.101607E+02  0.666400E+01  0.764460E+01
  vertex  0.777140E+01  0.666400E+01  0.101728E+02
 endloop
endfacet
facet normal  0.682302E+00  0.345959E+00  0.644032E+00
 outer loop
  vertex  0.777130E+01  0.666400E+01  0.101728E+02
  vertex  0.827360E+01  0.442610E+01  0.108428E+02
  vertex  0.108173E+02  0.442600E+01  0.814800E+01
 endloop
endfacet
facet normal  0.431694E+00  0.803725E+00  0.409472E+00
 outer loop
  vertex  0.101607E+02  0.666400E+01  0.764460E+01
  vertex  0.695590E+01  0.962570E+01  0.521000E+01
  vertex  0.532150E+01  0.962570E+01  0.693310E+01
 endloop
endfacet
facet normal  0.432087E+00  0.804102E+00  0.408314E+00
 outer loop
  vertex  0.532140E+01  0.962560E+01  0.693310E+01
  vertex  0.777140E+01  0.666400E+01  0.101728E+02
  vertex  0.101606E+02  0.666400E+01  0.764450E+01
 endloop
endfacet
facet normal  0.645155E+00  0.398150E+00  0.652113E+00
 outer loop
  vertex  0.695590E+01  0.962570E+01  0.521000E+01
  vertex  0.636540E+01  0.119983E+02  0.434560E+01
  vertex  0.491270E+01  0.119983E+02  0.578280E+01
 endloop
endfacet
facet normal  0.659484E+00  0.416912E+00  0.625512E+00
 outer loop
  vertex  0.491270E+01  0.119982E+02  0.578280E+01
  vertex  0.532150E+01  0.962570E+01  0.693310E+01
  vertex  0.695590E+01  0.962560E+01  0.521000E+01
 endloop
endfacet
facet normal  0.578236E+00 -0.409781E+00  0.705495E+00
 outer loop
  vertex  0.636540E+01  0.119983E+02  0.434560E+01
  vertex  0.920030E+01  0.168341E+02  0.483090E+01
  vertex  0.725110E+01  0.168341E+02  0.642850E+01
 endloop
endfacet
facet normal  0.644933E+00 -0.398905E+00  0.651871E+00
 outer loop
  vertex  0.725110E+01  0.168341E+02  0.642850E+01
  vertex  0.491270E+01  0.119983E+02  0.578280E+01
  vertex  0.636530E+01  0.119982E+02  0.434560E+01
 endloop
endfacet
facet normal  0.501442E+00 -0.426414E+00  0.752813E+00
 outer loop
  vertex  0.920030E+01  0.168341E+02  0.483090E+01
  vertex  0.154147E+02  0.265168E+02  0.617610E+01
  vertex  0.123483E+02  0.265168E+02  0.821860E+01
 endloop
endfacet
facet normal  0.572216E+00 -0.430298E+00  0.698150E+00
 outer loop
  vertex  0.123482E+02  0.265167E+02  0.821860E+01
  vertex  0.725110E+01  0.168341E+02  0.642850E+01
  vertex  0.920030E+01  0.168341E+02  0.483090E+01
 endloop
endfacet
facet normal  0.482450E+00 -0.342835E+00  0.806043E+00
 outer loop
  vertex  0.154147E+02  0.265168E+02  0.617610E+01
  vertex  0.215225E+02  0.383280E+02  0.754400E+01
  vertex  0.173542E+02  0.383280E+02  0.100389E+02
 endloop
endfacet
facet normal  0.521081E+00 -0.341408E+00  0.782250E+00
 outer loop
  vertex  0.173542E+02  0.383279E+02  0.100389E+02
  vertex  0.123483E+02  0.265168E+02  0.821860E+01
  vertex  0.154146E+02  0.265167E+02  0.617600E+01
 endloop
endfacet
facet normal  0.509003E+00 -0.113919E+00  0.853193E+00
 outer loop
  vertex  0.215225E+02  0.383280E+02  0.754400E+01
  vertex  0.229003E+02  0.478155E+02  0.798880E+01
  vertex  0.184716E+02  0.478155E+02  0.106309E+02
 endloop
endfacet
facet normal  0.510276E+00 -0.113289E+00  0.852516E+00
 outer loop
  vertex  0.184715E+02  0.478154E+02  0.106309E+02
  vertex  0.173542E+02  0.383280E+02  0.100389E+02
  vertex  0.215224E+02  0.383279E+02  0.754400E+01
 endloop
endfacet
facet normal  0.473499E+00  0.512763E+00  0.716152E+00
 outer loop
  vertex  0.229003E+02  0.478155E+02  0.798880E+01
  vertex  0.184368E+02  0.528995E+02  0.729980E+01
  vertex  0.147854E+02  0.528995E+02  0.971400E+01
 endloop
endfacet
facet normal  0.453380E+00  0.465794E+00  0.759923E+00
 outer loop
  vertex  0.147854E+02  0.528995E+02  0.971390E+01
  vertex  0.184716E+02  0.478155E+02  0.106309E+02
  vertex  0.229002E+02  0.478154E+02  0.798880E+01
 endloop
endfacet
facet normal  0.286941E+00  0.889912E+00  0.354571E+00
 outer loop
  vertex  0.184368E+02  0.528995E+02  0.729980E+01
  vertex  0.124667E+02  0.551808E+02  0.640550E+01
  vertex  0.984900E+01  0.551808E+02  0.852390E+01
 endloop
endfacet
facet normal  0.288592E+00  0.852180E+00  0.436468E+00
 outer loop
  vertex  0.984890E+01  0.551808E+02  0.852390E+01
  vertex  0.147854E+02  0.528995E+02  0.971400E+01
  vertex  0.184368E+02  0.528995E+02  0.729970E+01
 endloop
endfacet
facet normal  0.326399E+00  0.884526E+00  0.333282E+00
 outer loop
  vertex  0.124667E+02  0.551808E+02  0.640550E+01
  vertex  0.926690E+01  0.564356E+02  0.620900E+01
  vertex  0.717020E+01  0.564356E+02  0.826240E+01
 endloop
endfacet
facet normal  0.348138E+00  0.832926E+00  0.430156E+00
 outer loop
  vertex  0.717010E+01  0.564356E+02  0.826230E+01
  vertex  0.984900E+01  0.551808E+02  0.852390E+01
  vertex  0.124666E+02  0.551808E+02  0.640540E+01
 endloop
endfacet
facet normal  0.722037E+00 -0.595033E-01  0.689291E+00
 outer loop
  vertex  0.926690E+01  0.564356E+02  0.620900E+01
  vertex  0.893500E+01  0.573210E+02  0.663310E+01
  vertex  0.684080E+01  0.573211E+02  0.882680E+01
 endloop
endfacet
facet normal  0.686751E+00 -0.191430E+00  0.701233E+00
 outer loop
  vertex  0.684070E+01  0.573210E+02  0.882680E+01
  vertex  0.717020E+01  0.564356E+02  0.826240E+01
  vertex  0.926690E+01  0.564356E+02  0.620900E+01
 endloop
endfacet
facet normal  0.447105E+00 -0.786044E+00  0.426886E+00
 outer loop
  vertex  0.893500E+01  0.573210E+02  0.663310E+01
  vertex  0.957970E+01  0.579599E+02  0.713430E+01
  vertex  0.732700E+01  0.579599E+02  0.949370E+01
 endloop
endfacet
facet normal  0.447086E+00 -0.786059E+00  0.426878E+00
 outer loop
  vertex  0.732700E+01  0.579598E+02  0.949370E+01
  vertex  0.684080E+01  0.573211E+02  0.882680E+01
  vertex  0.893500E+01  0.573209E+02  0.663310E+01
 endloop
endfacet
facet normal  0.588521E+00 -0.580046E+00  0.563195E+00
 outer loop
  vertex  0.957970E+01  0.579599E+02  0.713430E+01
  vertex  0.986330E+01  0.584363E+02  0.732860E+01
  vertex  0.754390E+01  0.584363E+02  0.975230E+01
 endloop
endfacet
facet normal  0.591318E+00 -0.575820E+00  0.564601E+00
 outer loop
  vertex  0.754390E+01  0.584362E+02  0.975230E+01
  vertex  0.732700E+01  0.579599E+02  0.949370E+01
  vertex  0.957970E+01  0.579598E+02  0.713430E+01
 endloop
endfacet
facet normal  0.553823E+00  0.642968E+00  0.529029E+00
 outer loop
  vertex  0.986330E+01  0.584363E+02  0.732860E+01
  vertex  0.963640E+01  0.587596E+02  0.717320E+01
  vertex  0.737040E+01  0.587596E+02  0.954540E+01
 endloop
endfacet
facet normal  0.555792E+00  0.638949E+00  0.531827E+00
 outer loop
  vertex  0.737030E+01  0.587596E+02  0.954530E+01
  vertex  0.754390E+01  0.584363E+02  0.975230E+01
  vertex  0.986330E+01  0.584362E+02  0.732850E+01
 endloop
endfacet
facet normal  0.150238E+00  0.978312E+00  0.142596E+00
 outer loop
  vertex  0.963640E+01  0.587596E+02  0.717320E+01
  vertex  0.891870E+01  0.589415E+02  0.668140E+01
  vertex  0.682140E+01  0.589415E+02  0.889110E+01
 endloop
endfacet
facet normal  0.151489E+00  0.977809E+00  0.144707E+00
 outer loop
  vertex  0.682140E+01  0.589415E+02  0.889100E+01
  vertex  0.737040E+01  0.587596E+02  0.954540E+01
  vertex  0.963640E+01  0.587596E+02  0.717320E+01
 endloop
endfacet
facet normal  0.118928E+00  0.986597E+00  0.111728E+00
 outer loop
  vertex  0.891870E+01  0.589415E+02  0.668140E+01
  vertex  0.795920E+01  0.591316E+02  0.602410E+01
  vertex  0.608760E+01  0.591316E+02  0.801630E+01
 endloop
endfacet
facet normal  0.119809E+00  0.986264E+00  0.113709E+00
 outer loop
  vertex  0.608760E+01  0.591315E+02  0.801630E+01
  vertex  0.682140E+01  0.589415E+02  0.889110E+01
  vertex  0.891870E+01  0.589415E+02  0.668130E+01
 endloop
endfacet
facet normal  0.301968E+00  0.911061E+00  0.280682E+00
 outer loop
  vertex  0.795920E+01  0.591316E+02  0.602410E+01
  vertex  0.715500E+01  0.595679E+02  0.547310E+01
  vertex  0.547250E+01  0.595679E+02  0.728320E+01
 endloop
endfacet
facet normal  0.304114E+00  0.908807E+00  0.285629E+00
 outer loop
  vertex  0.547240E+01  0.595679E+02  0.728310E+01
  vertex  0.608760E+01  0.591316E+02  0.801630E+01
  vertex  0.795910E+01  0.591315E+02  0.602400E+01
 endloop
endfacet
facet normal  0.636870E+00  0.498007E+00  0.588545E+00
 outer loop
  vertex  0.715500E+01  0.595679E+02  0.547310E+01
  vertex  0.676900E+01  0.603740E+02  0.520870E+01
  vertex  0.517720E+01  0.603740E+02  0.693120E+01
 endloop
endfacet
facet normal  0.637512E+00  0.492379E+00  0.592572E+00
 outer loop
  vertex  0.517710E+01  0.603740E+02  0.693120E+01
  vertex  0.547250E+01  0.595679E+02  0.728320E+01
  vertex  0.715500E+01  0.595679E+02  0.547310E+01
 endloop
endfacet
facet normal  0.729651E+00  0.120133E+00  0.673184E+00
 outer loop
  vertex  0.676900E+01  0.603740E+02  0.520870E+01
  vertex  0.667160E+01  0.613399E+02  0.514190E+01
  vertex  0.510270E+01  0.613399E+02  0.684240E+01
 endloop
endfacet
facet normal  0.729272E+00  0.118207E+00  0.673936E+00
 outer loop
  vertex  0.510270E+01  0.613399E+02  0.684240E+01
  vertex  0.517720E+01  0.603740E+02  0.693120E+01
  vertex  0.676900E+01  0.603740E+02  0.520870E+01
 endloop
endfacet
facet normal  0.731047E+00  0.103525E+00  0.674428E+00
 outer loop
  vertex  0.667160E+01  0.613399E+02  0.514190E+01
  vertex  0.660020E+01  0.622011E+02  0.508710E+01
  vertex  0.504810E+01  0.622011E+02  0.676950E+01
 endloop
endfacet
facet normal  0.731040E+00  0.103613E+00  0.674422E+00
 outer loop
  vertex  0.504800E+01  0.622010E+02  0.676940E+01
  vertex  0.510270E+01  0.613399E+02  0.684240E+01
  vertex  0.667150E+01  0.613399E+02  0.514190E+01
 endloop
endfacet
facet normal  0.226260E+00  0.951440E+00  0.208730E+00
 outer loop
  vertex  0.660020E+01  0.622011E+02  0.508710E+01
  vertex  0.516470E+01  0.627852E+02  0.398070E+01
  vertex  0.395020E+01  0.627852E+02  0.529720E+01
 endloop
endfacet
facet normal  0.226259E+00  0.951452E+00  0.208679E+00
 outer loop
  vertex  0.395020E+01  0.627851E+02  0.529720E+01
  vertex  0.504810E+01  0.622011E+02  0.676950E+01
  vertex  0.660020E+01  0.622010E+02  0.508710E+01
 endloop
endfacet
facet normal  0.243390E-01  0.999453E+00  0.223779E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.395020E+01  0.627852E+02  0.529720E+01
  vertex  0.516470E+01  0.627851E+02  0.398070E+01
 endloop
endfacet
facet normal -0.129102E+00 -0.966878E+00 -0.220182E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.827360E+01  0.442610E+01  0.108428E+02
  vertex  0.510890E+01  0.442610E+01  0.126984E+02
 endloop
endfacet
facet normal  0.473709E+00  0.348453E+00  0.808815E+00
 outer loop
  vertex  0.827360E+01  0.442610E+01  0.108428E+02
  vertex  0.777140E+01  0.666400E+01  0.101728E+02
  vertex  0.479880E+01  0.666400E+01  0.119138E+02
 endloop
endfacet
facet normal  0.474002E+00  0.349110E+00  0.808359E+00
 outer loop
  vertex  0.479870E+01  0.666400E+01  0.119138E+02
  vertex  0.510890E+01  0.442610E+01  0.126984E+02
  vertex  0.827350E+01  0.442600E+01  0.108428E+02
 endloop
endfacet
facet normal  0.298169E+00  0.805989E+00  0.511348E+00
 outer loop
  vertex  0.777140E+01  0.666400E+01  0.101728E+02
  vertex  0.532150E+01  0.962570E+01  0.693310E+01
  vertex  0.328670E+01  0.962570E+01  0.811960E+01
 endloop
endfacet
facet normal  0.298890E+00  0.806379E+00  0.510311E+00
 outer loop
  vertex  0.328670E+01  0.962560E+01  0.811960E+01
  vertex  0.479880E+01  0.666400E+01  0.119138E+02
  vertex  0.777130E+01  0.666400E+01  0.101728E+02
 endloop
endfacet
facet normal  0.419336E+00  0.453532E+00  0.786426E+00
 outer loop
  vertex  0.532150E+01  0.962570E+01  0.693310E+01
  vertex  0.491270E+01  0.119983E+02  0.578280E+01
  vertex  0.305680E+01  0.119983E+02  0.677240E+01
 endloop
endfacet
facet normal  0.443374E+00  0.474738E+00  0.760291E+00
 outer loop
  vertex  0.305670E+01  0.119982E+02  0.677230E+01
  vertex  0.328670E+01  0.962570E+01  0.811960E+01
  vertex  0.532140E+01  0.962560E+01  0.693310E+01
 endloop
endfacet
facet normal  0.365129E+00 -0.294485E+00  0.883153E+00
 outer loop
  vertex  0.491270E+01  0.119983E+02  0.578280E+01
  vertex  0.725110E+01  0.168341E+02  0.642850E+01
  vertex  0.459000E+01  0.168341E+02  0.752870E+01
 endloop
endfacet
facet normal  0.452221E+00 -0.276004E+00  0.848126E+00
 outer loop
  vertex  0.459000E+01  0.168341E+02  0.752860E+01
  vertex  0.305680E+01  0.119983E+02  0.677240E+01
  vertex  0.491270E+01  0.119982E+02  0.578280E+01
 endloop
endfacet
facet normal  0.286893E+00 -0.318084E+00  0.903612E+00
 outer loop
  vertex  0.725110E+01  0.168341E+02  0.642850E+01
  vertex  0.123483E+02  0.265168E+02  0.821860E+01
  vertex  0.791800E+01  0.265168E+02  0.962520E+01
 endloop
endfacet
facet normal  0.362673E+00 -0.314590E+00  0.877212E+00
 outer loop
  vertex  0.791800E+01  0.265167E+02  0.962520E+01
  vertex  0.459000E+01  0.168341E+02  0.752870E+01
  vertex  0.725110E+01  0.168341E+02  0.642850E+01
 endloop
endfacet
facet normal  0.259493E+00 -0.253594E+00  0.931855E+00
 outer loop
  vertex  0.123483E+02  0.265168E+02  0.821860E+01
  vertex  0.173542E+02  0.383280E+02  0.100389E+02
  vertex  0.111844E+02  0.383280E+02  0.117570E+02
 endloop
endfacet
facet normal  0.293178E+00 -0.247735E+00  0.923404E+00
 outer loop
  vertex  0.111843E+02  0.383279E+02  0.117569E+02
  vertex  0.791800E+01  0.265168E+02  0.962520E+01
  vertex  0.123482E+02  0.265167E+02  0.821860E+01
 endloop
endfacet
facet normal  0.265998E+00 -0.912082E-01  0.959649E+00
 outer loop
  vertex  0.173542E+02  0.383280E+02  0.100389E+02
  vertex  0.184716E+02  0.478155E+02  0.106309E+02
  vertex  0.119077E+02  0.478155E+02  0.124503E+02
 endloop
endfacet
facet normal  0.267161E+00 -0.904737E-01  0.959395E+00
 outer loop
  vertex  0.119076E+02  0.478154E+02  0.124503E+02
  vertex  0.111844E+02  0.383280E+02  0.117570E+02
  vertex  0.173542E+02  0.383279E+02  0.100389E+02
 endloop
endfacet
facet normal  0.279077E+00  0.362703E+00  0.889136E+00
 outer loop
  vertex  0.184716E+02  0.478155E+02  0.106309E+02
  vertex  0.147854E+02  0.528995E+02  0.971400E+01
  vertex  0.948870E+01  0.528995E+02  0.113765E+02
 endloop
endfacet
facet normal  0.253616E+00  0.313925E+00  0.914948E+00
 outer loop
  vertex  0.948860E+01  0.528995E+02  0.113765E+02
  vertex  0.119077E+02  0.478155E+02  0.124503E+02
  vertex  0.184715E+02  0.478154E+02  0.106309E+02
 endloop
endfacet
facet normal  0.229318E+00  0.791644E+00  0.566315E+00
 outer loop
  vertex  0.147854E+02  0.528995E+02  0.971400E+01
  vertex  0.984900E+01  0.551808E+02  0.852390E+01
  vertex  0.624640E+01  0.551808E+02  0.998270E+01
 endloop
endfacet
facet normal  0.210862E+00  0.710122E+00  0.671762E+00
 outer loop
  vertex  0.624630E+01  0.551808E+02  0.998270E+01
  vertex  0.948870E+01  0.528995E+02  0.113765E+02
  vertex  0.147854E+02  0.528995E+02  0.971390E+01
 endloop
endfacet
facet normal  0.300706E+00  0.761595E+00  0.574063E+00
 outer loop
  vertex  0.984900E+01  0.551808E+02  0.852390E+01
  vertex  0.717020E+01  0.564356E+02  0.826240E+01
  vertex  0.447080E+01  0.564356E+02  0.967640E+01
 endloop
endfacet
facet normal  0.299202E+00  0.603771E+00  0.738877E+00
 outer loop
  vertex  0.447070E+01  0.564356E+02  0.967640E+01
  vertex  0.624640E+01  0.551808E+02  0.998270E+01
  vertex  0.984890E+01  0.551808E+02  0.852390E+01
 endloop
endfacet
facet normal  0.470070E+00 -0.343388E+00  0.813093E+00
 outer loop
  vertex  0.717020E+01  0.564356E+02  0.826240E+01
  vertex  0.684080E+01  0.573211E+02  0.882680E+01
  vertex  0.422780E+01  0.573210E+02  0.103374E+02
 endloop
endfacet
facet normal  0.409354E+00 -0.471013E+00  0.781394E+00
 outer loop
  vertex  0.422770E+01  0.573209E+02  0.103374E+02
  vertex  0.447080E+01  0.564356E+02  0.967640E+01
  vertex  0.717010E+01  0.564356E+02  0.826230E+01
 endloop
endfacet
facet normal  0.308043E+00 -0.789168E+00  0.531341E+00
 outer loop
  vertex  0.684080E+01  0.573211E+02  0.882680E+01
  vertex  0.732700E+01  0.579599E+02  0.949370E+01
  vertex  0.452440E+01  0.579599E+02  0.111185E+02
 endloop
endfacet
facet normal  0.306521E+00 -0.790533E+00  0.530192E+00
 outer loop
  vertex  0.452440E+01  0.579598E+02  0.111184E+02
  vertex  0.422780E+01  0.573210E+02  0.103374E+02
  vertex  0.684070E+01  0.573210E+02  0.882680E+01
 endloop
endfacet
facet normal  0.410585E+00 -0.572273E+00  0.709876E+00
 outer loop
  vertex  0.732700E+01  0.579599E+02  0.949370E+01
  vertex  0.754390E+01  0.584363E+02  0.975230E+01
  vertex  0.465830E+01  0.584363E+02  0.114213E+02
 endloop
endfacet
facet normal  0.412668E+00 -0.568318E+00  0.711842E+00
 outer loop
  vertex  0.465820E+01  0.584362E+02  0.114212E+02
  vertex  0.452440E+01  0.579599E+02  0.111185E+02
  vertex  0.732700E+01  0.579598E+02  0.949370E+01
 endloop
endfacet
facet normal  0.387180E+00  0.635360E+00  0.668138E+00
 outer loop
  vertex  0.754390E+01  0.584363E+02  0.975230E+01
  vertex  0.737040E+01  0.587596E+02  0.954540E+01
  vertex  0.455120E+01  0.587596E+02  0.111791E+02
 endloop
endfacet
facet normal  0.388217E+00  0.631523E+00  0.671167E+00
 outer loop
  vertex  0.455110E+01  0.587596E+02  0.111791E+02
  vertex  0.465830E+01  0.584363E+02  0.114213E+02
  vertex  0.754390E+01  0.584362E+02  0.975230E+01
 endloop
endfacet
facet normal  0.106403E+00  0.977440E+00  0.182457E+00
 outer loop
  vertex  0.737040E+01  0.587596E+02  0.954540E+01
  vertex  0.682140E+01  0.589415E+02  0.889110E+01
  vertex  0.421220E+01  0.589415E+02  0.104127E+02
 endloop
endfacet
facet normal  0.106954E+00  0.976987E+00  0.184548E+00
 outer loop
  vertex  0.421220E+01  0.589415E+02  0.104126E+02
  vertex  0.455120E+01  0.587596E+02  0.111791E+02
  vertex  0.737030E+01  0.587596E+02  0.954530E+01
 endloop
endfacet
facet normal  0.844909E-01  0.986051E+00  0.143401E+00
 outer loop
  vertex  0.682140E+01  0.589415E+02  0.889110E+01
  vertex  0.608760E+01  0.591316E+02  0.801630E+01
  vertex  0.375900E+01  0.591316E+02  0.938830E+01
 endloop
endfacet
facet normal  0.847519E-01  0.985748E+00  0.145321E+00
 outer loop
  vertex  0.375900E+01  0.591315E+02  0.938820E+01
  vertex  0.421220E+01  0.589415E+02  0.104127E+02
  vertex  0.682140E+01  0.589415E+02  0.889100E+01
 endloop
endfacet
facet normal  0.214529E+00  0.907835E+00  0.360296E+00
 outer loop
  vertex  0.608760E+01  0.591316E+02  0.801630E+01
  vertex  0.547250E+01  0.595679E+02  0.728320E+01
  vertex  0.337920E+01  0.595679E+02  0.852960E+01
 endloop
endfacet
facet normal  0.215127E+00  0.905790E+00  0.365054E+00
 outer loop
  vertex  0.337910E+01  0.595679E+02  0.852960E+01
  vertex  0.375900E+01  0.591316E+02  0.938830E+01
  vertex  0.608760E+01  0.591315E+02  0.801630E+01
 endloop
endfacet
facet normal  0.447832E+00  0.490497E+00  0.747569E+00
 outer loop
  vertex  0.547250E+01  0.595679E+02  0.728320E+01
  vertex  0.517720E+01  0.603740E+02  0.693120E+01
  vertex  0.319690E+01  0.603740E+02  0.811750E+01
 endloop
endfacet
facet normal  0.447365E+00  0.485283E+00  0.751242E+00
 outer loop
  vertex  0.319680E+01  0.603740E+02  0.811750E+01
  vertex  0.337920E+01  0.595679E+02  0.852960E+01
  vertex  0.547240E+01  0.595679E+02  0.728310E+01
 endloop
endfacet
facet normal  0.510926E+00  0.117693E+00  0.851530E+00
 outer loop
  vertex  0.517720E+01  0.603740E+02  0.693120E+01
  vertex  0.510270E+01  0.613399E+02  0.684240E+01
  vertex  0.315090E+01  0.613399E+02  0.801350E+01
 endloop
endfacet
facet normal  0.510440E+00  0.116102E+00  0.852039E+00
 outer loop
  vertex  0.315080E+01  0.613399E+02  0.801350E+01
  vertex  0.319690E+01  0.603740E+02  0.811750E+01
  vertex  0.517710E+01  0.603740E+02  0.693120E+01
 endloop
endfacet
facet normal  0.511691E+00  0.104629E+00  0.852775E+00
 outer loop
  vertex  0.510270E+01  0.613399E+02  0.684240E+01
  vertex  0.504810E+01  0.622011E+02  0.676950E+01
  vertex  0.311720E+01  0.622011E+02  0.792810E+01
 endloop
endfacet
facet normal  0.511677E+00  0.104659E+00  0.852780E+00
 outer loop
  vertex  0.311710E+01  0.622010E+02  0.792810E+01
  vertex  0.315090E+01  0.613399E+02  0.801350E+01
  vertex  0.510270E+01  0.613399E+02  0.684240E+01
 endloop
endfacet
facet normal  0.156692E+00  0.952525E+00  0.261045E+00
 outer loop
  vertex  0.504810E+01  0.622011E+02  0.676950E+01
  vertex  0.395020E+01  0.627852E+02  0.529720E+01
  vertex  0.243920E+01  0.627853E+02  0.620380E+01
 endloop
endfacet
facet normal  0.156727E+00  0.952509E+00  0.261080E+00
 outer loop
  vertex  0.243910E+01  0.627853E+02  0.620380E+01
  vertex  0.311720E+01  0.622011E+02  0.792810E+01
  vertex  0.504800E+01  0.622010E+02  0.676940E+01
 endloop
endfacet
facet normal -0.801646E+00  0.000000E+00  0.597799E+00
 outer loop
  vertex  0.395020E+01  0.627852E+02  0.529720E+01
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex  0.000000E+00  0.629999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.168926E-01  0.999467E+00  0.279314E-01
 outer loop
  vertex  0.000000E+00  0.629999E+02  0.000000E+00
  vertex  0.243920E+01  0.627853E+02  0.620380E+01
  vertex  0.395020E+01  0.627851E+02  0.529720E+01
 endloop
endfacet
facet normal -0.616743E-01 -0.966965E+00 -0.247334E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.510890E+01  0.442610E+01  0.126984E+02
  vertex  0.153930E+01  0.442610E+01  0.135885E+02
 endloop
endfacet
facet normal  0.226387E+00  0.350049E+00  0.908963E+00
 outer loop
  vertex  0.510890E+01  0.442610E+01  0.126984E+02
  vertex  0.479880E+01  0.666400E+01  0.119138E+02
  vertex  0.144580E+01  0.666400E+01  0.127489E+02
 endloop
endfacet
facet normal  0.226639E+00  0.350420E+00  0.908758E+00
 outer loop
  vertex  0.144570E+01  0.666400E+01  0.127489E+02
  vertex  0.153930E+01  0.442610E+01  0.135885E+02
  vertex  0.510890E+01  0.442600E+01  0.126983E+02
 endloop
endfacet
facet normal  0.142071E+00  0.806952E+00  0.573276E+00
 outer loop
  vertex  0.479880E+01  0.666400E+01  0.119138E+02
  vertex  0.328670E+01  0.962570E+01  0.811960E+01
  vertex  0.990300E+00  0.962570E+01  0.868870E+01
 endloop
endfacet
facet normal  0.142659E+00  0.807206E+00  0.572772E+00
 outer loop
  vertex  0.990200E+00  0.962560E+01  0.868860E+01
  vertex  0.144580E+01  0.666400E+01  0.127489E+02
  vertex  0.479870E+01  0.666400E+01  0.119138E+02
 endloop
endfacet
facet normal  0.188323E+00  0.498670E+00  0.846087E+00
 outer loop
  vertex  0.328670E+01  0.962570E+01  0.811960E+01
  vertex  0.305680E+01  0.119983E+02  0.677240E+01
  vertex  0.924100E+00  0.119983E+02  0.724710E+01
 endloop
endfacet
facet normal  0.206601E+00  0.512314E+00  0.833577E+00
 outer loop
  vertex  0.924000E+00  0.119982E+02  0.724700E+01
  vertex  0.990300E+00  0.962570E+01  0.868870E+01
  vertex  0.328670E+01  0.962560E+01  0.811960E+01
 endloop
endfacet
facet normal  0.159770E+00 -0.201783E+00  0.966311E+00
 outer loop
  vertex  0.305680E+01  0.119983E+02  0.677240E+01
  vertex  0.459000E+01  0.168341E+02  0.752870E+01
  vertex  0.139840E+01  0.168341E+02  0.805640E+01
 endloop
endfacet
facet normal  0.213697E+00 -0.181596E+00  0.959873E+00
 outer loop
  vertex  0.139830E+01  0.168341E+02  0.805640E+01
  vertex  0.924100E+00  0.119983E+02  0.724710E+01
  vertex  0.305670E+01  0.119982E+02  0.677230E+01
 endloop
endfacet
facet normal  0.118083E+00 -0.248737E+00  0.961346E+00
 outer loop
  vertex  0.459000E+01  0.168341E+02  0.752870E+01
  vertex  0.791800E+01  0.265168E+02  0.962520E+01
  vertex  0.242590E+01  0.265168E+02  0.102998E+02
 endloop
endfacet
facet normal  0.158436E+00 -0.238779E+00  0.958062E+00
 outer loop
  vertex  0.242580E+01  0.265167E+02  0.102997E+02
  vertex  0.139840E+01  0.168341E+02  0.805640E+01
  vertex  0.459000E+01  0.168341E+02  0.752860E+01
 endloop
endfacet
facet normal  0.103494E+00 -0.204313E+00  0.973419E+00
 outer loop
  vertex  0.791800E+01  0.265168E+02  0.962520E+01
  vertex  0.111844E+02  0.383280E+02  0.117570E+02
  vertex  0.343420E+01  0.383280E+02  0.125810E+02
 endloop
endfacet
facet normal  0.119495E+00 -0.198102E+00  0.972870E+00
 outer loop
  vertex  0.343420E+01  0.383279E+02  0.125810E+02
  vertex  0.242590E+01  0.265168E+02  0.102998E+02
  vertex  0.791800E+01  0.265167E+02  0.962520E+01
 endloop
endfacet
facet normal  0.104830E+00 -0.804264E-01  0.991233E+00
 outer loop
  vertex  0.111844E+02  0.383280E+02  0.117570E+02
  vertex  0.119077E+02  0.478155E+02  0.124503E+02
  vertex  0.365670E+01  0.478155E+02  0.133229E+02
 endloop
endfacet
facet normal  0.105398E+00 -0.799712E-01  0.991209E+00
 outer loop
  vertex  0.365660E+01  0.478154E+02  0.133228E+02
  vertex  0.343420E+01  0.383280E+02  0.125810E+02
  vertex  0.111843E+02  0.383279E+02  0.117569E+02
 endloop
endfacet
facet normal  0.116213E+00  0.257881E+00  0.959162E+00
 outer loop
  vertex  0.119077E+02  0.478155E+02  0.124503E+02
  vertex  0.948870E+01  0.528995E+02  0.113765E+02
  vertex  0.290820E+01  0.528995E+02  0.121738E+02
 endloop
endfacet
facet normal  0.102264E+00  0.233606E+00  0.966939E+00
 outer loop
  vertex  0.290820E+01  0.528995E+02  0.121738E+02
  vertex  0.365670E+01  0.478155E+02  0.133229E+02
  vertex  0.119076E+02  0.478154E+02  0.124503E+02
 endloop
endfacet
facet normal  0.122467E+00  0.638354E+00  0.759938E+00
 outer loop
  vertex  0.948870E+01  0.528995E+02  0.113765E+02
  vertex  0.624640E+01  0.551808E+02  0.998270E+01
  vertex  0.190460E+01  0.551808E+02  0.106824E+02
 endloop
endfacet
facet normal  0.984490E-01  0.574540E+00  0.812534E+00
 outer loop
  vertex  0.190460E+01  0.551808E+02  0.106823E+02
  vertex  0.290820E+01  0.528995E+02  0.121738E+02
  vertex  0.948860E+01  0.528995E+02  0.113765E+02
 endloop
endfacet
facet normal  0.187078E+00  0.474666E+00  0.860055E+00
 outer loop
  vertex  0.624640E+01  0.551808E+02  0.998270E+01
  vertex  0.447080E+01  0.564356E+02  0.967640E+01
  vertex  0.135290E+01  0.564356E+02  0.103546E+02
 endloop
endfacet
facet normal  0.151183E+00  0.311613E+00  0.938105E+00
 outer loop
  vertex  0.135290E+01  0.564356E+02  0.103545E+02
  vertex  0.190460E+01  0.551808E+02  0.106824E+02
  vertex  0.624630E+01  0.551808E+02  0.998270E+01
 endloop
endfacet
facet normal  0.198875E+00 -0.550651E+00  0.810699E+00
 outer loop
  vertex  0.447080E+01  0.564356E+02  0.967640E+01
  vertex  0.422780E+01  0.573210E+02  0.103374E+02
  vertex  0.127430E+01  0.573211E+02  0.110620E+02
 endloop
endfacet
facet normal  0.169080E+00 -0.605997E+00  0.777290E+00
 outer loop
  vertex  0.127420E+01  0.573210E+02  0.110620E+02
  vertex  0.135290E+01  0.564356E+02  0.103546E+02
  vertex  0.447070E+01  0.564356E+02  0.967640E+01
 endloop
endfacet
facet normal  0.146064E+00 -0.792203E+00  0.592520E+00
 outer loop
  vertex  0.422780E+01  0.573210E+02  0.103374E+02
  vertex  0.452440E+01  0.579599E+02  0.111185E+02
  vertex  0.136310E+01  0.579599E+02  0.118978E+02
 endloop
endfacet
facet normal  0.144947E+00 -0.793538E+00  0.591006E+00
 outer loop
  vertex  0.136310E+01  0.579598E+02  0.118978E+02
  vertex  0.127430E+01  0.573211E+02  0.110620E+02
  vertex  0.422770E+01  0.573209E+02  0.103374E+02
 endloop
endfacet
facet normal  0.197117E+00 -0.564756E+00  0.801371E+00
 outer loop
  vertex  0.452440E+01  0.579599E+02  0.111185E+02
  vertex  0.465830E+01  0.584363E+02  0.114213E+02
  vertex  0.140350E+01  0.584363E+02  0.122219E+02
 endloop
endfacet
facet normal  0.197864E+00 -0.562718E+00  0.802620E+00
 outer loop
  vertex  0.140340E+01  0.584362E+02  0.122218E+02
  vertex  0.136310E+01  0.579599E+02  0.118978E+02
  vertex  0.452440E+01  0.579598E+02  0.111184E+02
 endloop
endfacet
facet normal  0.186202E+00  0.627840E+00  0.755742E+00
 outer loop
  vertex  0.465830E+01  0.584363E+02  0.114213E+02
  vertex  0.455120E+01  0.587596E+02  0.111791E+02
  vertex  0.137120E+01  0.587596E+02  0.119626E+02
 endloop
endfacet
facet normal  0.186283E+00  0.626145E+00  0.757127E+00
 outer loop
  vertex  0.137110E+01  0.587596E+02  0.119625E+02
  vertex  0.140350E+01  0.584363E+02  0.122219E+02
  vertex  0.465820E+01  0.584362E+02  0.114212E+02
 endloop
endfacet
facet normal  0.517941E-01  0.976570E+00  0.208873E+00
 outer loop
  vertex  0.455120E+01  0.587596E+02  0.111791E+02
  vertex  0.421220E+01  0.589415E+02  0.104127E+02
  vertex  0.126910E+01  0.589415E+02  0.111425E+02
 endloop
endfacet
facet normal  0.517601E-01  0.976315E+00  0.210073E+00
 outer loop
  vertex  0.126900E+01  0.589415E+02  0.111424E+02
  vertex  0.137120E+01  0.587596E+02  0.119626E+02
  vertex  0.455110E+01  0.587596E+02  0.111791E+02
 endloop
endfacet
facet normal  0.412440E-01  0.985492E+00  0.164631E+00
 outer loop
  vertex  0.421220E+01  0.589415E+02  0.104127E+02
  vertex  0.375900E+01  0.591316E+02  0.938830E+01
  vertex  0.113250E+01  0.591316E+02  0.100463E+02
 endloop
endfacet
facet normal  0.410812E-01  0.985329E+00  0.165648E+00
 outer loop
  vertex  0.113250E+01  0.591315E+02  0.100462E+02
  vertex  0.126910E+01  0.589415E+02  0.111425E+02
  vertex  0.421220E+01  0.589415E+02  0.104126E+02
 endloop
endfacet
facet normal  0.104662E+00  0.904556E+00  0.413310E+00
 outer loop
  vertex  0.375900E+01  0.591316E+02  0.938830E+01
  vertex  0.337920E+01  0.595679E+02  0.852960E+01
  vertex  0.101810E+01  0.595679E+02  0.912750E+01
 endloop
endfacet
facet normal  0.104257E+00  0.903388E+00  0.415957E+00
 outer loop
  vertex  0.101810E+01  0.595679E+02  0.912740E+01
  vertex  0.113250E+01  0.591316E+02  0.100463E+02
  vertex  0.375900E+01  0.591315E+02  0.938820E+01
 endloop
endfacet
facet normal  0.216147E+00  0.482744E+00  0.848669E+00
 outer loop
  vertex  0.337920E+01  0.595679E+02  0.852960E+01
  vertex  0.319690E+01  0.603740E+02  0.811750E+01
  vertex  0.963200E+00  0.603740E+02  0.868640E+01
 endloop
endfacet
facet normal  0.215356E+00  0.480037E+00  0.850404E+00
 outer loop
  vertex  0.963100E+00  0.603740E+02  0.868640E+01
  vertex  0.101810E+01  0.595679E+02  0.912750E+01
  vertex  0.337910E+01  0.595679E+02  0.852960E+01
 endloop
endfacet
facet normal  0.245523E+00  0.115327E+00  0.962506E+00
 outer loop
  vertex  0.319690E+01  0.603740E+02  0.811750E+01
  vertex  0.315090E+01  0.613399E+02  0.801350E+01
  vertex  0.949300E+00  0.613399E+02  0.857510E+01
 endloop
endfacet
facet normal  0.245195E+00  0.114583E+00  0.962679E+00
 outer loop
  vertex  0.949200E+00  0.613399E+02  0.857500E+01
  vertex  0.963200E+00  0.603740E+02  0.868640E+01
  vertex  0.319680E+01  0.603740E+02  0.811750E+01
 endloop
endfacet
facet normal  0.245799E+00  0.105173E+00  0.963598E+00
 outer loop
  vertex  0.315090E+01  0.613399E+02  0.801350E+01
  vertex  0.311720E+01  0.622011E+02  0.792810E+01
  vertex  0.939100E+00  0.622011E+02  0.848370E+01
 endloop
endfacet
facet normal  0.245808E+00  0.105302E+00  0.963582E+00
 outer loop
  vertex  0.939100E+00  0.622010E+02  0.848360E+01
  vertex  0.949300E+00  0.613399E+02  0.857510E+01
  vertex  0.315080E+01  0.613399E+02  0.801350E+01
 endloop
endfacet
facet normal  0.748138E-01  0.953034E+00  0.293476E+00
 outer loop
  vertex  0.311720E+01  0.622011E+02  0.792810E+01
  vertex  0.243920E+01  0.627853E+02  0.620380E+01
  vertex  0.734900E+00  0.627852E+02  0.663860E+01
 endloop
endfacet
facet normal  0.748765E-01  0.953068E+00  0.293352E+00
 outer loop
  vertex  0.734800E+00  0.627851E+02  0.663850E+01
  vertex  0.939100E+00  0.622011E+02  0.848370E+01
  vertex  0.311710E+01  0.622010E+02  0.792810E+01
 endloop
endfacet
facet normal  0.796182E-02  0.999474E+00  0.314431E-01
 outer loop
  vertex  0.000000E+00  0.629999E+02  0.000000E+00
  vertex  0.734900E+00  0.627852E+02  0.663860E+01
  vertex  0.243910E+01  0.627853E+02  0.620380E+01
 endloop
endfacet
facet normal  0.559704E-02 -0.966939E+00 -0.254948E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex  0.153930E+01  0.442610E+01  0.135885E+02
  vertex -0.215030E+01  0.442610E+01  0.135075E+02
 endloop
endfacet
facet normal -0.205343E-01  0.350439E+00  0.936360E+00
 outer loop
  vertex  0.153930E+01  0.442610E+01  0.135885E+02
  vertex  0.144580E+01  0.666400E+01  0.127489E+02
  vertex -0.201980E+01  0.666400E+01  0.126729E+02
 endloop
endfacet
facet normal -0.205479E-01  0.350408E+00  0.936372E+00
 outer loop
  vertex -0.201970E+01  0.666400E+01  0.126729E+02
  vertex -0.215030E+01  0.442610E+01  0.135075E+02
  vertex  0.153920E+01  0.442600E+01  0.135885E+02
 endloop
endfacet
facet normal -0.128549E-01  0.807146E+00  0.590212E+00
 outer loop
  vertex  0.144580E+01  0.666400E+01  0.127489E+02
  vertex  0.990300E+00  0.962570E+01  0.868870E+01
  vertex -0.138340E+01  0.962570E+01  0.863700E+01
 endloop
endfacet
facet normal -0.129442E-01  0.807125E+00  0.590238E+00
 outer loop
  vertex -0.138330E+01  0.962560E+01  0.863700E+01
  vertex -0.201980E+01  0.666400E+01  0.126729E+02
  vertex  0.144570E+01  0.666400E+01  0.127489E+02
 endloop
endfacet
facet normal -0.166332E-01  0.518855E+00  0.854701E+00
 outer loop
  vertex  0.990300E+00  0.962570E+01  0.868870E+01
  vertex  0.924100E+00  0.119983E+02  0.724710E+01
  vertex -0.129060E+01  0.119983E+02  0.720400E+01
 endloop
endfacet
facet normal -0.185756E-01  0.517484E+00  0.855491E+00
 outer loop
  vertex -0.129050E+01  0.119982E+02  0.720390E+01
  vertex -0.138340E+01  0.962570E+01  0.863700E+01
  vertex  0.990200E+00  0.962560E+01  0.868860E+01
 endloop
endfacet
facet normal -0.141042E-01 -0.163698E+00  0.986410E+00
 outer loop
  vertex  0.924100E+00  0.119983E+02  0.724710E+01
  vertex  0.139840E+01  0.168341E+02  0.805640E+01
  vertex -0.195160E+01  0.168341E+02  0.800850E+01
 endloop
endfacet
facet normal -0.191491E-01 -0.166624E+00  0.985835E+00
 outer loop
  vertex -0.195150E+01  0.168341E+02  0.800850E+01
  vertex -0.129060E+01  0.119983E+02  0.720400E+01
  vertex  0.924000E+00  0.119982E+02  0.724700E+01
 endloop
endfacet
facet normal -0.102809E-01 -0.224665E+00  0.974382E+00
 outer loop
  vertex  0.139840E+01  0.168341E+02  0.805640E+01
  vertex  0.242590E+01  0.265168E+02  0.102998E+02
  vertex -0.338390E+01  0.265168E+02  0.102385E+02
 endloop
endfacet
facet normal -0.139264E-01 -0.226359E+00  0.973944E+00
 outer loop
  vertex -0.338380E+01  0.265167E+02  0.102384E+02
  vertex -0.195160E+01  0.168341E+02  0.800850E+01
  vertex  0.139830E+01  0.168341E+02  0.805640E+01
 endloop
endfacet
facet normal -0.894357E-02 -0.188891E+00  0.981957E+00
 outer loop
  vertex  0.242590E+01  0.265168E+02  0.102998E+02
  vertex  0.343420E+01  0.383280E+02  0.125810E+02
  vertex -0.478950E+01  0.383280E+02  0.125061E+02
 endloop
endfacet
facet normal -0.103455E-01 -0.189715E+00  0.981785E+00
 outer loop
  vertex -0.478950E+01  0.383279E+02  0.125060E+02
  vertex -0.338390E+01  0.265168E+02  0.102385E+02
  vertex  0.242580E+01  0.265167E+02  0.102997E+02
 endloop
endfacet
facet normal -0.903974E-02 -0.777457E-01  0.996932E+00
 outer loop
  vertex  0.343420E+01  0.383280E+02  0.125810E+02
  vertex  0.365670E+01  0.478155E+02  0.133229E+02
  vertex -0.509980E+01  0.478155E+02  0.132435E+02
 endloop
endfacet
facet normal -0.908087E-02 -0.777720E-01  0.996930E+00
 outer loop
  vertex -0.509980E+01  0.478154E+02  0.132434E+02
  vertex -0.478950E+01  0.383280E+02  0.125061E+02
  vertex  0.343420E+01  0.383279E+02  0.125810E+02
 endloop
endfacet
facet normal -0.101562E-01  0.219027E+00  0.975666E+00
 outer loop
  vertex  0.365670E+01  0.478155E+02  0.133229E+02
  vertex  0.290820E+01  0.528995E+02  0.121738E+02
  vertex -0.405660E+01  0.528995E+02  0.121013E+02
 endloop
endfacet
facet normal -0.882960E-02  0.220917E+00  0.975253E+00
 outer loop
  vertex -0.405660E+01  0.528995E+02  0.121013E+02
  vertex -0.509980E+01  0.478155E+02  0.132435E+02
  vertex  0.365660E+01  0.478154E+02  0.133228E+02
 endloop
endfacet
facet normal -0.117303E-01  0.543535E+00  0.839304E+00
 outer loop
  vertex  0.290820E+01  0.528995E+02  0.121738E+02
  vertex  0.190460E+01  0.551808E+02  0.106824E+02
  vertex -0.265790E+01  0.551807E+02  0.106187E+02
 endloop
endfacet
facet normal -0.870220E-02  0.548684E+00  0.835984E+00
 outer loop
  vertex -0.265790E+01  0.551806E+02  0.106187E+02
  vertex -0.405660E+01  0.528995E+02  0.121013E+02
  vertex  0.290820E+01  0.528995E+02  0.121738E+02
 endloop
endfacet
facet normal -0.184164E-01  0.245124E+00  0.969317E+00
 outer loop
  vertex  0.190460E+01  0.551808E+02  0.106824E+02
  vertex  0.135290E+01  0.564356E+02  0.103546E+02
  vertex -0.188930E+01  0.564356E+02  0.102930E+02
 endloop
endfacet
facet normal -0.134688E-01  0.258918E+00  0.965805E+00
 outer loop
  vertex -0.188920E+01  0.564356E+02  0.102930E+02
  vertex -0.265790E+01  0.551807E+02  0.106187E+02
  vertex  0.190460E+01  0.551808E+02  0.106823E+02
 endloop
endfacet
facet normal -0.168387E-01 -0.624981E+00  0.780458E+00
 outer loop
  vertex  0.135290E+01  0.564356E+02  0.103546E+02
  vertex  0.127430E+01  0.573211E+02  0.110620E+02
  vertex -0.178010E+01  0.573211E+02  0.109961E+02
 endloop
endfacet
facet normal -0.148698E-01 -0.620681E+00  0.783922E+00
 outer loop
  vertex -0.178000E+01  0.573210E+02  0.109961E+02
  vertex -0.188930E+01  0.564356E+02  0.102930E+02
  vertex  0.135290E+01  0.564356E+02  0.103545E+02
 endloop
endfacet
facet normal -0.131950E-01 -0.793768E+00  0.608078E+00
 outer loop
  vertex  0.127430E+01  0.573211E+02  0.110620E+02
  vertex  0.136310E+01  0.579599E+02  0.118978E+02
  vertex -0.190430E+01  0.579599E+02  0.118269E+02
 endloop
endfacet
facet normal -0.131493E-01 -0.793641E+00  0.608244E+00
 outer loop
  vertex -0.190420E+01  0.579598E+02  0.118268E+02
  vertex -0.178010E+01  0.573211E+02  0.109961E+02
  vertex  0.127420E+01  0.573210E+02  0.110620E+02
 endloop
endfacet
facet normal -0.179046E-01 -0.561358E+00  0.827380E+00
 outer loop
  vertex  0.136310E+01  0.579599E+02  0.118978E+02
  vertex  0.140350E+01  0.584363E+02  0.122219E+02
  vertex -0.196060E+01  0.584363E+02  0.121491E+02
 endloop
endfacet
facet normal -0.179661E-01 -0.561673E+00  0.827164E+00
 outer loop
  vertex -0.196060E+01  0.584362E+02  0.121491E+02
  vertex -0.190430E+01  0.579599E+02  0.118269E+02
  vertex  0.136310E+01  0.579598E+02  0.118978E+02
 endloop
endfacet
facet normal -0.169145E-01  0.624544E+00  0.780807E+00
 outer loop
  vertex  0.140350E+01  0.584363E+02  0.122219E+02
  vertex  0.137120E+01  0.587596E+02  0.119626E+02
  vertex -0.191550E+01  0.587596E+02  0.118914E+02
 endloop
endfacet
facet normal -0.168538E-01  0.624652E+00  0.780721E+00
 outer loop
  vertex -0.191550E+01  0.587596E+02  0.118914E+02
  vertex -0.196060E+01  0.584363E+02  0.121491E+02
  vertex  0.140340E+01  0.584362E+02  0.122218E+02
 endloop
endfacet
facet normal -0.473167E-02  0.976138E+00  0.217099E+00
 outer loop
  vertex  0.137120E+01  0.587596E+02  0.119626E+02
  vertex  0.126910E+01  0.589415E+02  0.111425E+02
  vertex -0.177290E+01  0.589415E+02  0.110762E+02
 endloop
endfacet
facet normal -0.469371E-02  0.976167E+00  0.216969E+00
 outer loop
  vertex -0.177280E+01  0.589415E+02  0.110761E+02
  vertex -0.191550E+01  0.587596E+02  0.118914E+02
  vertex  0.137110E+01  0.587596E+02  0.119625E+02
 endloop
endfacet
facet normal -0.377403E-02  0.985208E+00  0.171320E+00
 outer loop
  vertex  0.126910E+01  0.589415E+02  0.111425E+02
  vertex  0.113250E+01  0.591316E+02  0.100463E+02
  vertex -0.158210E+01  0.591316E+02  0.998650E+01
 endloop
endfacet
facet normal -0.372401E-02  0.985244E+00  0.171118E+00
 outer loop
  vertex -0.158210E+01  0.591315E+02  0.998640E+01
  vertex -0.177290E+01  0.589415E+02  0.110762E+02
  vertex  0.126900E+01  0.589415E+02  0.111424E+02
 endloop
endfacet
facet normal -0.958317E-02  0.902822E+00  0.429908E+00
 outer loop
  vertex  0.113250E+01  0.591316E+02  0.100463E+02
  vertex  0.101810E+01  0.595679E+02  0.912750E+01
  vertex -0.142230E+01  0.595679E+02  0.907310E+01
 endloop
endfacet
facet normal -0.941615E-02  0.902942E+00  0.429659E+00
 outer loop
  vertex -0.142220E+01  0.595679E+02  0.907310E+01
  vertex -0.158210E+01  0.591316E+02  0.998650E+01
  vertex  0.113250E+01  0.591315E+02  0.100462E+02
 endloop
endfacet
facet normal -0.196538E-01  0.478910E+00  0.877644E+00
 outer loop
  vertex  0.101810E+01  0.595679E+02  0.912750E+01
  vertex  0.963200E+00  0.603740E+02  0.868640E+01
  vertex -0.134550E+01  0.603740E+02  0.863470E+01
 endloop
endfacet
facet normal -0.195246E-01  0.479198E+00  0.877490E+00
 outer loop
  vertex -0.134540E+01  0.603740E+02  0.863460E+01
  vertex -0.142230E+01  0.595679E+02  0.907310E+01
  vertex  0.101810E+01  0.595679E+02  0.912740E+01
 endloop
endfacet
facet normal -0.222605E-01  0.114128E+00  0.993217E+00
 outer loop
  vertex  0.963200E+00  0.603740E+02  0.868640E+01
  vertex  0.949300E+00  0.613399E+02  0.857510E+01
  vertex -0.132620E+01  0.613399E+02  0.852410E+01
 endloop
endfacet
facet normal -0.222428E-01  0.114171E+00  0.993212E+00
 outer loop
  vertex -0.132620E+01  0.613399E+02  0.852410E+01
  vertex -0.134550E+01  0.603740E+02  0.863470E+01
  vertex  0.963100E+00  0.603740E+02  0.868640E+01
 endloop
endfacet
facet normal -0.223032E-01  0.105251E+00  0.994196E+00
 outer loop
  vertex  0.949300E+00  0.613399E+02  0.857510E+01
  vertex  0.939100E+00  0.622011E+02  0.848370E+01
  vertex -0.131200E+01  0.622011E+02  0.843320E+01
 endloop
endfacet
facet normal -0.222392E-01  0.105431E+00  0.994178E+00
 outer loop
  vertex -0.131200E+01  0.622010E+02  0.843310E+01
  vertex -0.132620E+01  0.613399E+02  0.852410E+01
  vertex  0.949200E+00  0.613399E+02  0.857500E+01
 endloop
endfacet
facet normal -0.678282E-02  0.953131E+00  0.302481E+00
 outer loop
  vertex  0.939100E+00  0.622011E+02  0.848370E+01
  vertex  0.734900E+00  0.627852E+02  0.663860E+01
  vertex -0.102660E+01  0.627852E+02  0.659910E+01
 endloop
endfacet
facet normal -0.672944E-02  0.953143E+00  0.302445E+00
 outer loop
  vertex -0.102660E+01  0.627851E+02  0.659910E+01
  vertex -0.131200E+01  0.622011E+02  0.843320E+01
  vertex  0.939100E+00  0.622010E+02  0.848360E+01
 endloop
endfacet
facet normal  0.993928E+00  0.000000E+00 -0.110029E+00
 outer loop
  vertex  0.734900E+00  0.627852E+02  0.663860E+01
  vertex  0.000000E+00  0.629999E+02  0.000000E+00
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
 endloop
endfacet
facet normal -0.669112E-03  0.999474E+00  0.324289E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.102660E+01  0.627852E+02  0.659910E+01
  vertex  0.734800E+00  0.627851E+02  0.663850E+01
 endloop
endfacet
facet normal  0.729437E-01 -0.966969E+00 -0.244235E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.215030E+01  0.442610E+01  0.135075E+02
  vertex -0.567200E+01  0.442610E+01  0.124557E+02
 endloop
endfacet
facet normal -0.267750E+00  0.350340E+00  0.897537E+00
 outer loop
  vertex -0.215030E+01  0.442610E+01  0.135075E+02
  vertex -0.201980E+01  0.666400E+01  0.126729E+02
  vertex -0.532770E+01  0.666400E+01  0.116861E+02
 endloop
endfacet
facet normal -0.268047E+00  0.349922E+00  0.897611E+00
 outer loop
  vertex -0.532770E+01  0.666400E+01  0.116861E+02
  vertex -0.567200E+01  0.442610E+01  0.124557E+02
  vertex -0.215030E+01  0.442600E+01  0.135074E+02
 endloop
endfacet
facet normal -0.168006E+00  0.807201E+00  0.565863E+00
 outer loop
  vertex -0.201980E+01  0.666400E+01  0.126729E+02
  vertex -0.138340E+01  0.962570E+01  0.863700E+01
  vertex -0.364880E+01  0.962570E+01  0.796440E+01
 endloop
endfacet
facet normal -0.168832E+00  0.806956E+00  0.565966E+00
 outer loop
  vertex -0.364870E+01  0.962560E+01  0.796430E+01
  vertex -0.532770E+01  0.666400E+01  0.116861E+02
  vertex -0.201970E+01  0.666400E+01  0.126729E+02
 endloop
endfacet
facet normal -0.221955E+00  0.510449E+00  0.830770E+00
 outer loop
  vertex -0.138340E+01  0.962570E+01  0.863700E+01
  vertex -0.129060E+01  0.119983E+02  0.720400E+01
  vertex -0.339040E+01  0.119983E+02  0.664300E+01
 endloop
endfacet
facet normal -0.247780E+00  0.491876E+00  0.834664E+00
 outer loop
  vertex -0.339030E+01  0.119982E+02  0.664300E+01
  vertex -0.364880E+01  0.962570E+01  0.796440E+01
  vertex -0.138330E+01  0.962560E+01  0.863700E+01
 endloop
endfacet
facet normal -0.192099E+00 -0.186546E+00  0.963483E+00
 outer loop
  vertex -0.129060E+01  0.119983E+02  0.720400E+01
  vertex -0.195160E+01  0.168341E+02  0.800850E+01
  vertex -0.507980E+01  0.168341E+02  0.738480E+01
 endloop
endfacet
facet normal -0.251039E+00 -0.231845E+00  0.939802E+00
 outer loop
  vertex -0.507980E+01  0.168341E+02  0.738470E+01
  vertex -0.339040E+01  0.119983E+02  0.664300E+01
  vertex -0.129050E+01  0.119982E+02  0.720390E+01
 endloop
endfacet
facet normal -0.142626E+00 -0.242125E+00  0.959705E+00
 outer loop
  vertex -0.195160E+01  0.168341E+02  0.800850E+01
  vertex -0.338390E+01  0.265168E+02  0.102385E+02
  vertex -0.874880E+01  0.265168E+02  0.944120E+01
 endloop
endfacet
facet normal -0.188168E+00 -0.271746E+00  0.943794E+00
 outer loop
  vertex -0.874880E+01  0.265167E+02  0.944120E+01
  vertex -0.507980E+01  0.168341E+02  0.738480E+01
  vertex -0.195150E+01  0.168341E+02  0.800850E+01
 endloop
endfacet
facet normal -0.125125E+00 -0.201403E+00  0.971484E+00
 outer loop
  vertex -0.338390E+01  0.265168E+02  0.102385E+02
  vertex -0.478950E+01  0.383280E+02  0.125061E+02
  vertex -0.123502E+02  0.383280E+02  0.115323E+02
 endloop
endfacet
facet normal -0.143552E+00 -0.214797E+00  0.966051E+00
 outer loop
  vertex -0.123501E+02  0.383279E+02  0.115322E+02
  vertex -0.874880E+01  0.265168E+02  0.944120E+01
  vertex -0.338380E+01  0.265167E+02  0.102384E+02
 endloop
endfacet
facet normal -0.126664E+00 -0.809827E-01  0.988634E+00
 outer loop
  vertex -0.478950E+01  0.383280E+02  0.125061E+02
  vertex -0.509980E+01  0.478155E+02  0.132435E+02
  vertex -0.131485E+02  0.478155E+02  0.122123E+02
 endloop
endfacet
facet normal -0.127305E+00 -0.815620E-01  0.988505E+00
 outer loop
  vertex -0.131485E+02  0.478154E+02  0.122123E+02
  vertex -0.123502E+02  0.383280E+02  0.115323E+02
  vertex -0.478950E+01  0.383279E+02  0.125060E+02
 endloop
endfacet
facet normal -0.140672E+00  0.244412E+00  0.959414E+00
 outer loop
  vertex -0.509980E+01  0.478155E+02  0.132435E+02
  vertex -0.405660E+01  0.528995E+02  0.121013E+02
  vertex -0.104833E+02  0.528995E+02  0.111590E+02
 endloop
endfacet
facet normal -0.122608E+00  0.262565E+00  0.957093E+00
 outer loop
  vertex -0.104833E+02  0.528995E+02  0.111590E+02
  vertex -0.131485E+02  0.478155E+02  0.122123E+02
  vertex -0.509980E+01  0.478154E+02  0.132434E+02
 endloop
endfacet
facet normal -0.152273E+00  0.602535E+00  0.783431E+00
 outer loop
  vertex -0.405660E+01  0.528995E+02  0.121013E+02
  vertex -0.265790E+01  0.551807E+02  0.106187E+02
  vertex -0.691130E+01  0.551808E+02  0.979190E+01
 endloop
endfacet
facet normal -0.112173E+00  0.634134E+00  0.765044E+00
 outer loop
  vertex -0.691130E+01  0.551808E+02  0.979180E+01
  vertex -0.104833E+02  0.528995E+02  0.111590E+02
  vertex -0.405660E+01  0.528995E+02  0.121013E+02
 endloop
endfacet
facet normal -0.234228E+00  0.376132E+00  0.896472E+00
 outer loop
  vertex -0.265790E+01  0.551807E+02  0.106187E+02
  vertex -0.188930E+01  0.564356E+02  0.102930E+02
  vertex -0.495730E+01  0.564356E+02  0.949140E+01
 endloop
endfacet
facet normal -0.168419E+00  0.469852E+00  0.866530E+00
 outer loop
  vertex -0.495730E+01  0.564356E+02  0.949130E+01
  vertex -0.691130E+01  0.551808E+02  0.979190E+01
  vertex -0.265790E+01  0.551806E+02  0.106187E+02
 endloop
endfacet
facet normal -0.228106E+00 -0.588032E+00  0.776007E+00
 outer loop
  vertex -0.188930E+01  0.564356E+02  0.102930E+02
  vertex -0.178010E+01  0.573211E+02  0.109961E+02
  vertex -0.469320E+01  0.573211E+02  0.101398E+02
 endloop
endfacet
facet normal -0.213575E+00 -0.534936E+00  0.817453E+00
 outer loop
  vertex -0.469320E+01  0.573210E+02  0.101398E+02
  vertex -0.495730E+01  0.564356E+02  0.949140E+01
  vertex -0.188920E+01  0.564356E+02  0.102930E+02
 endloop
endfacet
facet normal -0.172469E+00 -0.793162E+00  0.584079E+00
 outer loop
  vertex -0.178010E+01  0.573211E+02  0.109961E+02
  vertex -0.190430E+01  0.579599E+02  0.118269E+02
  vertex -0.502300E+01  0.579599E+02  0.109060E+02
 endloop
endfacet
facet normal -0.172258E+00 -0.791831E+00  0.585944E+00
 outer loop
  vertex -0.502290E+01  0.579598E+02  0.109060E+02
  vertex -0.469320E+01  0.573211E+02  0.101398E+02
  vertex -0.178000E+01  0.573210E+02  0.109961E+02
 endloop
endfacet
facet normal -0.233474E+00 -0.563526E+00  0.792420E+00
 outer loop
  vertex -0.190430E+01  0.579599E+02  0.118269E+02
  vertex -0.196060E+01  0.584363E+02  0.121491E+02
  vertex -0.517170E+01  0.584363E+02  0.112030E+02
 endloop
endfacet
facet normal -0.233466E+00 -0.565936E+00  0.790702E+00
 outer loop
  vertex -0.517170E+01  0.584362E+02  0.112030E+02
  vertex -0.502300E+01  0.579599E+02  0.109060E+02
  vertex -0.190420E+01  0.579598E+02  0.118268E+02
 endloop
endfacet
facet normal -0.220631E+00  0.626579E+00  0.747476E+00
 outer loop
  vertex -0.196060E+01  0.584363E+02  0.121491E+02
  vertex -0.191550E+01  0.587596E+02  0.118914E+02
  vertex -0.505270E+01  0.587596E+02  0.109654E+02
 endloop
endfacet
facet normal -0.219676E+00  0.629081E+00  0.745654E+00
 outer loop
  vertex -0.505270E+01  0.587596E+02  0.109653E+02
  vertex -0.517170E+01  0.584363E+02  0.112030E+02
  vertex -0.196060E+01  0.584362E+02  0.121491E+02
 endloop
endfacet
facet normal -0.615212E-01  0.976383E+00  0.207104E+00
 outer loop
  vertex -0.191550E+01  0.587596E+02  0.118914E+02
  vertex -0.177290E+01  0.589415E+02  0.110762E+02
  vertex -0.467640E+01  0.589415E+02  0.102137E+02
 endloop
endfacet
facet normal -0.607797E-01  0.976680E+00  0.205916E+00
 outer loop
  vertex -0.467640E+01  0.589415E+02  0.102137E+02
  vertex -0.505270E+01  0.587596E+02  0.109654E+02
  vertex -0.191550E+01  0.587596E+02  0.118914E+02
 endloop
endfacet
facet normal -0.490152E-01  0.985356E+00  0.163313E+00
 outer loop
  vertex -0.177290E+01  0.589415E+02  0.110762E+02
  vertex -0.158210E+01  0.591316E+02  0.998650E+01
  vertex -0.417330E+01  0.591316E+02  0.920880E+01
 endloop
endfacet
facet normal -0.481808E-01  0.985578E+00  0.162219E+00
 outer loop
  vertex -0.417320E+01  0.591315E+02  0.920880E+01
  vertex -0.467640E+01  0.589415E+02  0.102137E+02
  vertex -0.177280E+01  0.589415E+02  0.110761E+02
 endloop
endfacet
facet normal -0.124322E+00  0.903626E+00  0.409883E+00
 outer loop
  vertex -0.158210E+01  0.591316E+02  0.998650E+01
  vertex -0.142230E+01  0.595679E+02  0.907310E+01
  vertex -0.375160E+01  0.595679E+02  0.836660E+01
 endloop
endfacet
facet normal -0.122277E+00  0.904945E+00  0.407581E+00
 outer loop
  vertex -0.375160E+01  0.595679E+02  0.836660E+01
  vertex -0.417330E+01  0.591316E+02  0.920880E+01
  vertex -0.158210E+01  0.591315E+02  0.998640E+01
 endloop
endfacet
facet normal -0.255922E+00  0.480561E+00  0.838788E+00
 outer loop
  vertex -0.142230E+01  0.595679E+02  0.907310E+01
  vertex -0.134550E+01  0.603740E+02  0.863470E+01
  vertex -0.354930E+01  0.603740E+02  0.796230E+01
 endloop
endfacet
facet normal -0.253996E+00  0.483903E+00  0.837451E+00
 outer loop
  vertex -0.354920E+01  0.603740E+02  0.796220E+01
  vertex -0.375160E+01  0.595679E+02  0.836660E+01
  vertex -0.142220E+01  0.595679E+02  0.907310E+01
 endloop
endfacet
facet normal -0.290347E+00  0.114585E+00  0.950036E+00
 outer loop
  vertex -0.134550E+01  0.603740E+02  0.863470E+01
  vertex -0.132620E+01  0.613399E+02  0.852410E+01
  vertex -0.349820E+01  0.613399E+02  0.786030E+01
 endloop
endfacet
facet normal -0.289817E+00  0.115690E+00  0.950064E+00
 outer loop
  vertex -0.349810E+01  0.613399E+02  0.786030E+01
  vertex -0.354930E+01  0.603740E+02  0.796230E+01
  vertex -0.134540E+01  0.603740E+02  0.863460E+01
 endloop
endfacet
facet normal -0.290660E+00  0.105175E+00  0.951029E+00
 outer loop
  vertex -0.132620E+01  0.613399E+02  0.852410E+01
  vertex -0.131200E+01  0.622011E+02  0.843320E+01
  vertex -0.346070E+01  0.622011E+02  0.777650E+01
 endloop
endfacet
facet normal -0.290650E+00  0.105209E+00  0.951028E+00
 outer loop
  vertex -0.346070E+01  0.622010E+02  0.777650E+01
  vertex -0.349820E+01  0.613399E+02  0.786030E+01
  vertex -0.132620E+01  0.613399E+02  0.852410E+01
 endloop
endfacet
facet normal -0.884944E-01  0.953008E+00  0.289731E+00
 outer loop
  vertex -0.131200E+01  0.622011E+02  0.843320E+01
  vertex -0.102660E+01  0.627852E+02  0.659910E+01
  vertex -0.270800E+01  0.627853E+02  0.608520E+01
 endloop
endfacet
facet normal -0.885038E-01  0.952996E+00  0.289770E+00
 outer loop
  vertex -0.270790E+01  0.627853E+02  0.608510E+01
  vertex -0.346070E+01  0.622011E+02  0.777650E+01
  vertex -0.131200E+01  0.622010E+02  0.843310E+01
 endloop
endfacet
facet normal -0.938167E-02  0.999473E+00  0.310885E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.270800E+01  0.627853E+02  0.608520E+01
  vertex -0.102660E+01  0.627851E+02  0.659910E+01
 endloop
endfacet
facet normal  0.139832E+00 -0.966832E+00 -0.213736E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.567200E+01  0.442610E+01  0.124557E+02
  vertex -0.874480E+01  0.442610E+01  0.104454E+02
 endloop
endfacet
facet normal -0.512695E+00  0.348689E+00  0.784577E+00
 outer loop
  vertex -0.567200E+01  0.442610E+01  0.124557E+02
  vertex -0.532770E+01  0.666400E+01  0.116861E+02
  vertex -0.821400E+01  0.666400E+01  0.980000E+01
 endloop
endfacet
facet normal -0.513212E+00  0.348008E+00  0.784541E+00
 outer loop
  vertex -0.821390E+01  0.666400E+01  0.980000E+01
  vertex -0.874480E+01  0.442610E+01  0.104454E+02
  vertex -0.567190E+01  0.442600E+01  0.124556E+02
 endloop
endfacet
facet normal -0.322705E+00  0.806156E+00  0.495957E+00
 outer loop
  vertex -0.532770E+01  0.666400E+01  0.116861E+02
  vertex -0.364880E+01  0.962570E+01  0.796440E+01
  vertex -0.562430E+01  0.962570E+01  0.667900E+01
 endloop
endfacet
facet normal -0.323971E+00  0.805762E+00  0.495773E+00
 outer loop
  vertex -0.562430E+01  0.962560E+01  0.667890E+01
  vertex -0.821400E+01  0.666400E+01  0.980000E+01
  vertex -0.532770E+01  0.666400E+01  0.116861E+02
 endloop
endfacet
facet normal -0.452510E+00  0.471011E+00  0.757221E+00
 outer loop
  vertex -0.364880E+01  0.962570E+01  0.796440E+01
  vertex -0.339040E+01  0.119983E+02  0.664300E+01
  vertex -0.518460E+01  0.119983E+02  0.557080E+01
 endloop
endfacet
facet normal -0.489174E+00  0.441940E+00  0.751930E+00
 outer loop
  vertex -0.518450E+01  0.119982E+02  0.557070E+01
  vertex -0.562430E+01  0.962570E+01  0.667900E+01
  vertex -0.364870E+01  0.962560E+01  0.796430E+01
 endloop
endfacet
facet normal -0.407527E+00 -0.275906E+00  0.870516E+00
 outer loop
  vertex -0.339040E+01  0.119983E+02  0.664300E+01
  vertex -0.507980E+01  0.168341E+02  0.738480E+01
  vertex -0.762560E+01  0.168341E+02  0.619300E+01
 endloop
endfacet
facet normal -0.481195E+00 -0.346476E+00  0.805236E+00
 outer loop
  vertex -0.762550E+01  0.168341E+02  0.619290E+01
  vertex -0.518460E+01  0.119983E+02  0.557080E+01
  vertex -0.339030E+01  0.119982E+02  0.664300E+01
 endloop
endfacet
facet normal -0.323808E+00 -0.312368E+00  0.893070E+00
 outer loop
  vertex -0.507980E+01  0.168341E+02  0.738480E+01
  vertex -0.874880E+01  0.265168E+02  0.944120E+01
  vertex -0.129512E+02  0.265168E+02  0.791750E+01
 endloop
endfacet
facet normal -0.394378E+00 -0.366962E+00  0.842499E+00
 outer loop
  vertex -0.129511E+02  0.265167E+02  0.791750E+01
  vertex -0.762560E+01  0.168341E+02  0.619300E+01
  vertex -0.507980E+01  0.168341E+02  0.738470E+01
 endloop
endfacet
facet normal -0.294171E+00 -0.252877E+00  0.921692E+00
 outer loop
  vertex -0.874880E+01  0.265168E+02  0.944120E+01
  vertex -0.123502E+02  0.383280E+02  0.115323E+02
  vertex -0.181820E+02  0.383280E+02  0.967100E+01
 endloop
endfacet
facet normal -0.327336E+00 -0.278987E+00  0.902783E+00
 outer loop
  vertex -0.181819E+02  0.383279E+02  0.967090E+01
  vertex -0.129512E+02  0.265168E+02  0.791750E+01
  vertex -0.874880E+01  0.265167E+02  0.944120E+01
 endloop
endfacet
facet normal -0.301502E+00 -0.933786E-01  0.948882E+00
 outer loop
  vertex -0.123502E+02  0.383280E+02  0.115323E+02
  vertex -0.131485E+02  0.478155E+02  0.122123E+02
  vertex -0.193516E+02  0.478155E+02  0.102413E+02
 endloop
endfacet
facet normal -0.302680E+00 -0.943147E-01  0.948414E+00
 outer loop
  vertex -0.193516E+02  0.478154E+02  0.102412E+02
  vertex -0.181820E+02  0.383280E+02  0.967100E+01
  vertex -0.123501E+02  0.383279E+02  0.115322E+02
 endloop
endfacet
facet normal -0.316438E+00  0.348663E+00  0.882214E+00
 outer loop
  vertex -0.131485E+02  0.478155E+02  0.122123E+02
  vertex -0.104833E+02  0.528995E+02  0.111590E+02
  vertex -0.155044E+02  0.528995E+02  0.935800E+01
 endloop
endfacet
facet normal -0.281667E+00  0.367180E+00  0.886477E+00
 outer loop
  vertex -0.155044E+02  0.528995E+02  0.935790E+01
  vertex -0.193516E+02  0.478155E+02  0.102413E+02
  vertex -0.131485E+02  0.478154E+02  0.122123E+02
 endloop
endfacet
facet normal -0.267389E+00  0.767676E+00  0.582389E+00
 outer loop
  vertex -0.104833E+02  0.528995E+02  0.111590E+02
  vertex -0.691130E+01  0.551808E+02  0.979190E+01
  vertex -0.103535E+02  0.551808E+02  0.821150E+01
 endloop
endfacet
facet normal -0.212425E+00  0.777264E+00  0.592230E+00
 outer loop
  vertex -0.103535E+02  0.551808E+02  0.821150E+01
  vertex -0.155044E+02  0.528995E+02  0.935800E+01
  vertex -0.104833E+02  0.528995E+02  0.111590E+02
 endloop
endfacet
facet normal -0.359089E+00  0.705503E+00  0.611000E+00
 outer loop
  vertex -0.691130E+01  0.551808E+02  0.979190E+01
  vertex -0.495730E+01  0.564356E+02  0.949140E+01
  vertex -0.756370E+01  0.564356E+02  0.795960E+01
 endloop
endfacet
facet normal -0.279245E+00  0.743002E+00  0.608251E+00
 outer loop
  vertex -0.756370E+01  0.564356E+02  0.795950E+01
  vertex -0.103535E+02  0.551808E+02  0.821150E+01
  vertex -0.691130E+01  0.551808E+02  0.979180E+01
 endloop
endfacet
facet normal -0.493786E+00 -0.413055E+00  0.765219E+00
 outer loop
  vertex -0.495730E+01  0.564356E+02  0.949140E+01
  vertex -0.469320E+01  0.573211E+02  0.101398E+02
  vertex -0.722920E+01  0.573210E+02  0.850330E+01
 endloop
endfacet
facet normal -0.479997E+00 -0.320112E+00  0.816781E+00
 outer loop
  vertex -0.722910E+01  0.573209E+02  0.850320E+01
  vertex -0.756370E+01  0.564356E+02  0.795960E+01
  vertex -0.495730E+01  0.564356E+02  0.949130E+01
 endloop
endfacet
facet normal -0.333157E+00 -0.789767E+00  0.515048E+00
 outer loop
  vertex -0.469320E+01  0.573211E+02  0.101398E+02
  vertex -0.502300E+01  0.579599E+02  0.109060E+02
  vertex -0.774420E+01  0.579599E+02  0.914580E+01
 endloop
endfacet
facet normal -0.333470E+00 -0.788515E+00  0.516761E+00
 outer loop
  vertex -0.774420E+01  0.579598E+02  0.914570E+01
  vertex -0.722920E+01  0.573210E+02  0.850330E+01
  vertex -0.469320E+01  0.573210E+02  0.101398E+02
 endloop
endfacet
facet normal -0.445658E+00 -0.569634E+00  0.690584E+00
 outer loop
  vertex -0.502300E+01  0.579599E+02  0.109060E+02
  vertex -0.517170E+01  0.584363E+02  0.112030E+02
  vertex -0.797350E+01  0.584363E+02  0.939490E+01
 endloop
endfacet
facet normal -0.444847E+00 -0.573731E+00  0.687709E+00
 outer loop
  vertex -0.797340E+01  0.584362E+02  0.939490E+01
  vertex -0.774420E+01  0.579599E+02  0.914580E+01
  vertex -0.502290E+01  0.579598E+02  0.109060E+02
 endloop
endfacet
facet normal -0.420452E+00  0.632691E+00  0.650325E+00
 outer loop
  vertex -0.517170E+01  0.584363E+02  0.112030E+02
  vertex -0.505270E+01  0.587596E+02  0.109654E+02
  vertex -0.779010E+01  0.587596E+02  0.919560E+01
 endloop
endfacet
facet normal -0.418081E+00  0.636752E+00  0.647885E+00
 outer loop
  vertex -0.779010E+01  0.587596E+02  0.919550E+01
  vertex -0.797350E+01  0.584363E+02  0.939490E+01
  vertex -0.517170E+01  0.584362E+02  0.112030E+02
 endloop
endfacet
facet normal -0.116043E+00  0.977100E+00  0.178352E+00
 outer loop
  vertex -0.505270E+01  0.587596E+02  0.109654E+02
  vertex -0.467640E+01  0.589415E+02  0.102137E+02
  vertex -0.720990E+01  0.589415E+02  0.856530E+01
 endloop
endfacet
facet normal -0.114324E+00  0.977578E+00  0.176839E+00
 outer loop
  vertex -0.720980E+01  0.589415E+02  0.856520E+01
  vertex -0.779010E+01  0.587596E+02  0.919560E+01
  vertex -0.505270E+01  0.587596E+02  0.109653E+02
 endloop
endfacet
facet normal -0.922322E-01  0.985802E+00  0.140309E+00
 outer loop
  vertex -0.467640E+01  0.589415E+02  0.102137E+02
  vertex -0.417330E+01  0.591316E+02  0.920880E+01
  vertex -0.643420E+01  0.591316E+02  0.772260E+01
 endloop
endfacet
facet normal -0.904655E-01  0.986146E+00  0.139040E+00
 outer loop
  vertex -0.643410E+01  0.591315E+02  0.772250E+01
  vertex -0.720990E+01  0.589415E+02  0.856530E+01
  vertex -0.467640E+01  0.589415E+02  0.102137E+02
 endloop
endfacet
facet normal -0.234026E+00  0.906170E+00  0.352262E+00
 outer loop
  vertex -0.417330E+01  0.591316E+02  0.920880E+01
  vertex -0.375160E+01  0.595679E+02  0.836660E+01
  vertex -0.578410E+01  0.595679E+02  0.701630E+01
 endloop
endfacet
facet normal -0.229759E+00  0.908290E+00  0.349600E+00
 outer loop
  vertex -0.578410E+01  0.595679E+02  0.701630E+01
  vertex -0.643420E+01  0.591316E+02  0.772260E+01
  vertex -0.417320E+01  0.591315E+02  0.920880E+01
 endloop
endfacet
facet normal -0.485531E+00  0.486238E+00  0.726521E+00
 outer loop
  vertex -0.375160E+01  0.595679E+02  0.836660E+01
  vertex -0.354930E+01  0.603740E+02  0.796230E+01
  vertex -0.547210E+01  0.603740E+02  0.667730E+01
 endloop
endfacet
facet normal -0.481859E+00  0.491676E+00  0.725305E+00
 outer loop
  vertex -0.547200E+01  0.603740E+02  0.667720E+01
  vertex -0.578410E+01  0.595679E+02  0.701630E+01
  vertex -0.375160E+01  0.595679E+02  0.836660E+01
 endloop
endfacet
facet normal -0.552497E+00  0.116387E+00  0.825349E+00
 outer loop
  vertex -0.354930E+01  0.603740E+02  0.796230E+01
  vertex -0.349820E+01  0.613399E+02  0.786030E+01
  vertex -0.539330E+01  0.613399E+02  0.659170E+01
 endloop
endfacet
facet normal -0.551695E+00  0.118177E+00  0.825631E+00
 outer loop
  vertex -0.539330E+01  0.613399E+02  0.659170E+01
  vertex -0.547210E+01  0.603740E+02  0.667730E+01
  vertex -0.354920E+01  0.603740E+02  0.796220E+01
 endloop
endfacet
facet normal -0.553239E+00  0.104508E+00  0.826441E+00
 outer loop
  vertex -0.349820E+01  0.613399E+02  0.786030E+01
  vertex -0.346070E+01  0.622011E+02  0.777650E+01
  vertex -0.533560E+01  0.622011E+02  0.652140E+01
 endloop
endfacet
facet normal -0.553200E+00  0.104700E+00  0.826443E+00
 outer loop
  vertex -0.533550E+01  0.622010E+02  0.652130E+01
  vertex -0.539330E+01  0.613399E+02  0.659170E+01
  vertex -0.349810E+01  0.613399E+02  0.786030E+01
 endloop
endfacet
facet normal -0.169664E+00  0.952353E+00  0.253450E+00
 outer loop
  vertex -0.346070E+01  0.622011E+02  0.777650E+01
  vertex -0.270800E+01  0.627853E+02  0.608520E+01
  vertex -0.417510E+01  0.627853E+02  0.510310E+01
 endloop
endfacet
facet normal -0.169621E+00  0.952359E+00  0.253460E+00
 outer loop
  vertex -0.417500E+01  0.627853E+02  0.510300E+01
  vertex -0.533560E+01  0.622011E+02  0.652140E+01
  vertex -0.346070E+01  0.622010E+02  0.777650E+01
 endloop
endfacet
facet normal -0.181857E-01  0.999465E+00  0.271711E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.417510E+01  0.627853E+02  0.510310E+01
  vertex -0.270790E+01  0.627853E+02  0.608510E+01
 endloop
endfacet
facet normal  0.194482E+00 -0.966439E+00 -0.167849E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.874480E+01  0.442610E+01  0.104454E+02
  vertex -0.111706E+02  0.442610E+01  0.763470E+01
 endloop
endfacet
facet normal -0.710117E+00  0.345376E+00  0.613554E+00
 outer loop
  vertex -0.874480E+01  0.442610E+01  0.104454E+02
  vertex -0.821400E+01  0.666400E+01  0.980000E+01
  vertex -0.104925E+02  0.666400E+01  0.716290E+01
 endloop
endfacet
facet normal -0.710634E+00  0.344664E+00  0.613356E+00
 outer loop
  vertex -0.104925E+02  0.666400E+01  0.716280E+01
  vertex -0.111706E+02  0.442610E+01  0.763470E+01
  vertex -0.874470E+01  0.442600E+01  0.104454E+02
 endloop
endfacet
facet normal -0.449478E+00  0.803767E+00  0.389780E+00
 outer loop
  vertex -0.821400E+01  0.666400E+01  0.980000E+01
  vertex -0.562430E+01  0.962570E+01  0.667900E+01
  vertex -0.718280E+01  0.962570E+01  0.488180E+01
 endloop
endfacet
facet normal -0.450560E+00  0.803389E+00  0.389309E+00
 outer loop
  vertex -0.718270E+01  0.962560E+01  0.488180E+01
  vertex -0.104925E+02  0.666400E+01  0.716290E+01
  vertex -0.821390E+01  0.666400E+01  0.980000E+01
 endloop
endfacet
facet normal -0.670373E+00  0.412373E+00  0.616886E+00
 outer loop
  vertex -0.562430E+01  0.962570E+01  0.667900E+01
  vertex -0.518460E+01  0.119983E+02  0.557080E+01
  vertex -0.656400E+01  0.119983E+02  0.407180E+01
 endloop
endfacet
facet normal -0.696345E+00  0.387805E+00  0.603913E+00
 outer loop
  vertex -0.656400E+01  0.119982E+02  0.407180E+01
  vertex -0.718280E+01  0.962570E+01  0.488180E+01
  vertex -0.562430E+01  0.962560E+01  0.667890E+01
 endloop
endfacet
facet normal -0.617303E+00 -0.398851E+00  0.678126E+00
 outer loop
  vertex -0.518460E+01  0.119983E+02  0.557080E+01
  vertex -0.762560E+01  0.168341E+02  0.619300E+01
  vertex -0.945630E+01  0.168341E+02  0.452650E+01
 endloop
endfacet
facet normal -0.657150E+00 -0.449894E+00  0.604772E+00
 outer loop
  vertex -0.945620E+01  0.168341E+02  0.452650E+01
  vertex -0.656400E+01  0.119983E+02  0.407180E+01
  vertex -0.518450E+01  0.119982E+02  0.557070E+01
 endloop
endfacet
facet normal -0.541347E+00 -0.426770E+00  0.724438E+00
 outer loop
  vertex -0.762560E+01  0.168341E+02  0.619300E+01
  vertex -0.129512E+02  0.265168E+02  0.791750E+01
  vertex -0.158024E+02  0.265168E+02  0.578690E+01
 endloop
endfacet
facet normal -0.592920E+00 -0.473397E+00  0.651415E+00
 outer loop
  vertex -0.158023E+02  0.265167E+02  0.578690E+01
  vertex -0.945630E+01  0.168341E+02  0.452650E+01
  vertex -0.762550E+01  0.168341E+02  0.619290E+01
 endloop
endfacet
facet normal -0.524283E+00 -0.347597E+00  0.777369E+00
 outer loop
  vertex -0.129512E+02  0.265168E+02  0.791750E+01
  vertex -0.181820E+02  0.383280E+02  0.967100E+01
  vertex -0.220405E+02  0.383280E+02  0.706870E+01
 endloop
endfacet
facet normal -0.555188E+00 -0.373850E+00  0.742969E+00
 outer loop
  vertex -0.220405E+02  0.383279E+02  0.706860E+01
  vertex -0.158024E+02  0.265168E+02  0.578690E+01
  vertex -0.129511E+02  0.265167E+02  0.791750E+01
 endloop
endfacet
facet normal -0.554097E+00 -0.117843E+00  0.824069E+00
 outer loop
  vertex -0.181820E+02  0.383280E+02  0.967100E+01
  vertex -0.193516E+02  0.478155E+02  0.102413E+02
  vertex -0.234501E+02  0.478155E+02  0.748550E+01
 endloop
endfacet
facet normal -0.555179E+00 -0.118638E+00  0.823227E+00
 outer loop
  vertex -0.234500E+02  0.478154E+02  0.748540E+01
  vertex -0.220405E+02  0.383280E+02  0.706870E+01
  vertex -0.181819E+02  0.383279E+02  0.967090E+01
 endloop
endfacet
facet normal -0.513184E+00  0.508473E+00  0.691446E+00
 outer loop
  vertex -0.193516E+02  0.478155E+02  0.102413E+02
  vertex -0.155044E+02  0.528995E+02  0.935800E+01
  vertex -0.188972E+02  0.528995E+02  0.683990E+01
 endloop
endfacet
facet normal -0.477378E+00  0.517680E+00  0.710013E+00
 outer loop
  vertex -0.188971E+02  0.528995E+02  0.683990E+01
  vertex -0.234501E+02  0.478155E+02  0.748550E+01
  vertex -0.193516E+02  0.478154E+02  0.102412E+02
 endloop
endfacet
facet normal -0.313639E+00  0.883288E+00  0.348473E+00
 outer loop
  vertex -0.155044E+02  0.528995E+02  0.935800E+01
  vertex -0.103535E+02  0.551808E+02  0.821150E+01
  vertex -0.128088E+02  0.551807E+02  0.600190E+01
 endloop
endfacet
facet normal -0.279213E+00  0.883460E+00  0.376217E+00
 outer loop
  vertex -0.128087E+02  0.551806E+02  0.600190E+01
  vertex -0.188972E+02  0.528995E+02  0.683990E+01
  vertex -0.155044E+02  0.528995E+02  0.935790E+01
 endloop
endfacet
facet normal -0.361110E+00  0.870165E+00  0.335281E+00
 outer loop
  vertex -0.103535E+02  0.551808E+02  0.821150E+01
  vertex -0.756370E+01  0.564356E+02  0.795960E+01
  vertex -0.955240E+01  0.564356E+02  0.581770E+01
 endloop
endfacet
facet normal -0.318754E+00  0.879186E+00  0.354157E+00
 outer loop
  vertex -0.955230E+01  0.564356E+02  0.581760E+01
  vertex -0.128088E+02  0.551807E+02  0.600190E+01
  vertex -0.103535E+02  0.551808E+02  0.821150E+01
 endloop
endfacet
facet normal -0.748277E+00 -0.118158E+00  0.652779E+00
 outer loop
  vertex -0.756370E+01  0.564356E+02  0.795960E+01
  vertex -0.722920E+01  0.573210E+02  0.850330E+01
  vertex -0.922530E+01  0.573211E+02  0.621520E+01
 endloop
endfacet
facet normal -0.732375E+00 -0.345699E-01  0.680023E+00
 outer loop
  vertex -0.922520E+01  0.573210E+02  0.621510E+01
  vertex -0.955240E+01  0.564356E+02  0.581770E+01
  vertex -0.756370E+01  0.564356E+02  0.795950E+01
 endloop
endfacet
facet normal -0.466383E+00 -0.785336E+00  0.407104E+00
 outer loop
  vertex -0.722920E+01  0.573210E+02  0.850330E+01
  vertex -0.774420E+01  0.579599E+02  0.914580E+01
  vertex -0.989240E+01  0.579599E+02  0.668480E+01
 endloop
endfacet
facet normal -0.466130E+00 -0.785741E+00  0.406614E+00
 outer loop
  vertex -0.989230E+01  0.579598E+02  0.668480E+01
  vertex -0.922530E+01  0.573211E+02  0.621520E+01
  vertex -0.722910E+01  0.573209E+02  0.850320E+01
 endloop
endfacet
facet normal -0.614661E+00 -0.577045E+00  0.537783E+00
 outer loop
  vertex -0.774420E+01  0.579599E+02  0.914580E+01
  vertex -0.797350E+01  0.584363E+02  0.939490E+01
  vertex -0.101854E+02  0.584363E+02  0.686680E+01
 endloop
endfacet
facet normal -0.612951E+00 -0.581397E+00  0.535041E+00
 outer loop
  vertex -0.101854E+02  0.584362E+02  0.686670E+01
  vertex -0.989240E+01  0.579599E+02  0.668480E+01
  vertex -0.774420E+01  0.579598E+02  0.914570E+01
 endloop
endfacet
facet normal -0.578795E+00  0.639925E+00  0.505463E+00
 outer loop
  vertex -0.797350E+01  0.584363E+02  0.939490E+01
  vertex -0.779010E+01  0.587596E+02  0.919560E+01
  vertex -0.995100E+01  0.587596E+02  0.672120E+01
 endloop
endfacet
facet normal -0.575571E+00  0.644264E+00  0.503630E+00
 outer loop
  vertex -0.995100E+01  0.587596E+02  0.672110E+01
  vertex -0.101854E+02  0.584363E+02  0.686680E+01
  vertex -0.797340E+01  0.584362E+02  0.939490E+01
 endloop
endfacet
facet normal -0.157822E+00  0.977925E+00  0.136945E+00
 outer loop
  vertex -0.779010E+01  0.587596E+02  0.919560E+01
  vertex -0.720990E+01  0.589415E+02  0.856530E+01
  vertex -0.920990E+01  0.589415E+02  0.626040E+01
 endloop
endfacet
facet normal -0.155611E+00  0.978425E+00  0.135901E+00
 outer loop
  vertex -0.920980E+01  0.589415E+02  0.626030E+01
  vertex -0.995100E+01  0.587596E+02  0.672120E+01
  vertex -0.779010E+01  0.587596E+02  0.919550E+01
 endloop
endfacet
facet normal -0.125040E+00  0.986322E+00  0.107398E+00
 outer loop
  vertex -0.720990E+01  0.589415E+02  0.856530E+01
  vertex -0.643420E+01  0.591316E+02  0.772260E+01
  vertex -0.821910E+01  0.591316E+02  0.564450E+01
 endloop
endfacet
facet normal -0.122892E+00  0.986673E+00  0.106645E+00
 outer loop
  vertex -0.821900E+01  0.591315E+02  0.564440E+01
  vertex -0.920990E+01  0.589415E+02  0.626040E+01
  vertex -0.720980E+01  0.589415E+02  0.856520E+01
 endloop
endfacet
facet normal -0.317263E+00  0.909202E+00  0.269623E+00
 outer loop
  vertex -0.643420E+01  0.591316E+02  0.772260E+01
  vertex -0.578410E+01  0.595679E+02  0.701630E+01
  vertex -0.738860E+01  0.595679E+02  0.512830E+01
 endloop
endfacet
facet normal -0.312109E+00  0.911420E+00  0.268145E+00
 outer loop
  vertex -0.738850E+01  0.595679E+02  0.512830E+01
  vertex -0.821910E+01  0.591316E+02  0.564450E+01
  vertex -0.643410E+01  0.591315E+02  0.772250E+01
 endloop
endfacet
facet normal -0.664501E+00  0.493271E+00  0.561357E+00
 outer loop
  vertex -0.578410E+01  0.595679E+02  0.701630E+01
  vertex -0.547210E+01  0.603740E+02  0.667730E+01
  vertex -0.699000E+01  0.603740E+02  0.488050E+01
 endloop
endfacet
facet normal -0.660286E+00  0.499147E+00  0.561138E+00
 outer loop
  vertex -0.698990E+01  0.603740E+02  0.488040E+01
  vertex -0.738860E+01  0.595679E+02  0.512830E+01
  vertex -0.578410E+01  0.595679E+02  0.701630E+01
 endloop
endfacet
facet normal -0.759007E+00  0.118655E+00  0.640179E+00
 outer loop
  vertex -0.547210E+01  0.603740E+02  0.667730E+01
  vertex -0.539330E+01  0.613399E+02  0.659170E+01
  vertex -0.688940E+01  0.613399E+02  0.481790E+01
 endloop
endfacet
facet normal -0.758299E+00  0.120500E+00  0.640673E+00
 outer loop
  vertex -0.688940E+01  0.613399E+02  0.481790E+01
  vertex -0.699000E+01  0.603740E+02  0.488050E+01
  vertex -0.547200E+01  0.603740E+02  0.667720E+01
 endloop
endfacet
facet normal -0.760313E+00  0.103290E+00  0.641292E+00
 outer loop
  vertex -0.539330E+01  0.613399E+02  0.659170E+01
  vertex -0.533560E+01  0.622011E+02  0.652140E+01
  vertex -0.681570E+01  0.622011E+02  0.476660E+01
 endloop
endfacet
facet normal -0.760319E+00  0.103279E+00  0.641286E+00
 outer loop
  vertex -0.681570E+01  0.622010E+02  0.476660E+01
  vertex -0.688940E+01  0.613399E+02  0.481790E+01
  vertex -0.539330E+01  0.613399E+02  0.659170E+01
 endloop
endfacet
facet normal -0.235797E+00  0.951234E+00  0.198879E+00
 outer loop
  vertex -0.533560E+01  0.622011E+02  0.652140E+01
  vertex -0.417510E+01  0.627853E+02  0.510310E+01
  vertex -0.533330E+01  0.627853E+02  0.372990E+01
 endloop
endfacet
facet normal -0.235748E+00  0.951238E+00  0.198922E+00
 outer loop
  vertex -0.533330E+01  0.627853E+02  0.372980E+01
  vertex -0.681570E+01  0.622011E+02  0.476660E+01
  vertex -0.533550E+01  0.622010E+02  0.652130E+01
 endloop
endfacet
facet normal -0.253052E-01  0.999452E+00  0.213466E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.533330E+01  0.627853E+02  0.372990E+01
  vertex -0.417500E+01  0.627853E+02  0.510300E+01
 endloop
endfacet
facet normal  0.231995E+00 -0.966151E+00 -0.112828E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.111706E+02  0.442610E+01  0.763470E+01
  vertex -0.128045E+02  0.442610E+01  0.427510E+01
 endloop
endfacet
facet normal -0.844670E+00  0.342642E+00  0.411253E+00
 outer loop
  vertex -0.111706E+02  0.442610E+01  0.763470E+01
  vertex -0.104925E+02  0.666400E+01  0.716290E+01
  vertex -0.120271E+02  0.666400E+01  0.401100E+01
 endloop
endfacet
facet normal -0.845015E+00  0.342082E+00  0.411010E+00
 outer loop
  vertex -0.120270E+02  0.666400E+01  0.401100E+01
  vertex -0.128045E+02  0.442610E+01  0.427510E+01
  vertex -0.111705E+02  0.442600E+01  0.763460E+01
 endloop
endfacet
facet normal -0.536883E+00  0.801888E+00  0.262168E+00
 outer loop
  vertex -0.104925E+02  0.666400E+01  0.716290E+01
  vertex -0.718280E+01  0.962570E+01  0.488180E+01
  vertex -0.823180E+01  0.962570E+01  0.273360E+01
 endloop
endfacet
facet normal -0.537469E+00  0.801651E+00  0.261692E+00
 outer loop
  vertex -0.823180E+01  0.962560E+01  0.273350E+01
  vertex -0.120271E+02  0.666400E+01  0.401100E+01
  vertex -0.104925E+02  0.666400E+01  0.716280E+01
 endloop
endfacet
facet normal -0.831892E+00  0.360887E+00  0.421564E+00
 outer loop
  vertex -0.718280E+01  0.962570E+01  0.488180E+01
  vertex -0.656400E+01  0.119983E+02  0.407180E+01
  vertex -0.747200E+01  0.119983E+02  0.228000E+01
 endloop
endfacet
facet normal -0.842265E+00  0.348401E+00  0.411347E+00
 outer loop
  vertex -0.747200E+01  0.119982E+02  0.227990E+01
  vertex -0.823180E+01  0.962570E+01  0.273360E+01
  vertex -0.718270E+01  0.962560E+01  0.488180E+01
 endloop
endfacet
facet normal -0.756701E+00 -0.492961E+00  0.429410E+00
 outer loop
  vertex -0.656400E+01  0.119983E+02  0.407180E+01
  vertex -0.945630E+01  0.168341E+02  0.452650E+01
  vertex -0.105866E+02  0.168341E+02  0.253470E+01
 endloop
endfacet
facet normal -0.765466E+00 -0.513436E+00  0.387874E+00
 outer loop
  vertex -0.105866E+02  0.168341E+02  0.253460E+01
  vertex -0.747200E+01  0.119983E+02  0.228000E+01
  vertex -0.656400E+01  0.119982E+02  0.407180E+01
 endloop
endfacet
facet normal -0.712719E+00 -0.527331E+00  0.462551E+00
 outer loop
  vertex -0.945630E+01  0.168341E+02  0.452650E+01
  vertex -0.158024E+02  0.265168E+02  0.578690E+01
  vertex -0.174550E+02  0.265168E+02  0.324050E+01
 endloop
endfacet
facet normal -0.728232E+00 -0.546689E+00  0.413291E+00
 outer loop
  vertex -0.174549E+02  0.265167E+02  0.324040E+01
  vertex -0.105866E+02  0.168341E+02  0.253470E+01
  vertex -0.945620E+01  0.168341E+02  0.452650E+01
 endloop
endfacet
facet normal -0.734879E+00 -0.443783E+00  0.512844E+00
 outer loop
  vertex -0.158024E+02  0.265168E+02  0.578690E+01
  vertex -0.220405E+02  0.383280E+02  0.706870E+01
  vertex -0.242112E+02  0.383280E+02  0.395820E+01
 endloop
endfacet
facet normal -0.746375E+00 -0.456373E+00  0.484405E+00
 outer loop
  vertex -0.242112E+02  0.383279E+02  0.395810E+01
  vertex -0.174550E+02  0.265168E+02  0.324050E+01
  vertex -0.158023E+02  0.265167E+02  0.578690E+01
 endloop
endfacet
facet normal -0.810970E+00 -0.145387E+00  0.566736E+00
 outer loop
  vertex -0.220405E+02  0.383280E+02  0.706870E+01
  vertex -0.234501E+02  0.478155E+02  0.748550E+01
  vertex -0.257520E+02  0.478155E+02  0.419160E+01
 endloop
endfacet
facet normal -0.811300E+00 -0.145682E+00  0.566189E+00
 outer loop
  vertex -0.257520E+02  0.478154E+02  0.419150E+01
  vertex -0.242112E+02  0.383280E+02  0.395820E+01
  vertex -0.220405E+02  0.383279E+02  0.706860E+01
 endloop
endfacet
facet normal -0.648268E+00  0.634076E+00  0.421539E+00
 outer loop
  vertex -0.234501E+02  0.478155E+02  0.748550E+01
  vertex -0.188972E+02  0.528995E+02  0.683990E+01
  vertex -0.208544E+02  0.528995E+02  0.383000E+01
 endloop
endfacet
facet normal -0.630594E+00  0.638830E+00  0.440735E+00
 outer loop
  vertex -0.208544E+02  0.528995E+02  0.382990E+01
  vertex -0.257520E+02  0.478155E+02  0.419160E+01
  vertex -0.234500E+02  0.478154E+02  0.748540E+01
 endloop
endfacet
facet normal -0.322625E+00  0.928538E+00  0.183660E+00
 outer loop
  vertex -0.188972E+02  0.528995E+02  0.683990E+01
  vertex -0.128088E+02  0.551807E+02  0.600190E+01
  vertex -0.143120E+02  0.551808E+02  0.336080E+01
 endloop
endfacet
facet normal -0.309605E+00  0.929306E+00  0.201332E+00
 outer loop
  vertex -0.143120E+02  0.551808E+02  0.336080E+01
  vertex -0.208544E+02  0.528995E+02  0.383000E+01
  vertex -0.188971E+02  0.528995E+02  0.683990E+01
 endloop
endfacet
facet normal -0.345363E+00  0.921939E+00  0.175366E+00
 outer loop
  vertex -0.128088E+02  0.551807E+02  0.600190E+01
  vertex -0.955240E+01  0.564356E+02  0.581770E+01
  vertex -0.108523E+02  0.564356E+02  0.325770E+01
 endloop
endfacet
facet normal -0.329921E+00  0.925127E+00  0.187860E+00
 outer loop
  vertex -0.108522E+02  0.564356E+02  0.325760E+01
  vertex -0.143120E+02  0.551808E+02  0.336080E+01
  vertex -0.128087E+02  0.551806E+02  0.600190E+01
 endloop
endfacet
facet normal -0.889898E+00  0.132829E+00  0.436392E+00
 outer loop
  vertex -0.955240E+01  0.564356E+02  0.581770E+01
  vertex -0.922530E+01  0.573211E+02  0.621520E+01
  vertex -0.105665E+02  0.573211E+02  0.348020E+01
 endloop
endfacet
facet normal -0.878400E+00  0.171541E+00  0.446080E+00
 outer loop
  vertex -0.105664E+02  0.573210E+02  0.348020E+01
  vertex -0.108523E+02  0.564356E+02  0.325770E+01
  vertex -0.955230E+01  0.564356E+02  0.581760E+01
 endloop
endfacet
facet normal -0.557402E+00 -0.783660E+00  0.274191E+00
 outer loop
  vertex -0.922530E+01  0.573211E+02  0.621520E+01
  vertex -0.989240E+01  0.579599E+02  0.668480E+01
  vertex -0.113394E+02  0.579599E+02  0.374320E+01
 endloop
endfacet
facet normal -0.556042E+00 -0.785153E+00  0.272676E+00
 outer loop
  vertex -0.113394E+02  0.579598E+02  0.374320E+01
  vertex -0.105665E+02  0.573211E+02  0.348020E+01
  vertex -0.922520E+01  0.573210E+02  0.621510E+01
 endloop
endfacet
facet normal -0.727684E+00 -0.584607E+00  0.358761E+00
 outer loop
  vertex -0.989240E+01  0.579599E+02  0.668480E+01
  vertex -0.101854E+02  0.584363E+02  0.686680E+01
  vertex -0.116751E+02  0.584363E+02  0.384520E+01
 endloop
endfacet
facet normal -0.725795E+00 -0.588006E+00  0.357030E+00
 outer loop
  vertex -0.116751E+02  0.584362E+02  0.384520E+01
  vertex -0.113394E+02  0.579599E+02  0.374320E+01
  vertex -0.989230E+01  0.579598E+02  0.668480E+01
 endloop
endfacet
facet normal -0.683855E+00  0.647366E+00  0.336540E+00
 outer loop
  vertex -0.101854E+02  0.584363E+02  0.686680E+01
  vertex -0.995100E+01  0.587596E+02  0.672120E+01
  vertex -0.114065E+02  0.587596E+02  0.376360E+01
 endloop
endfacet
facet normal -0.681013E+00  0.650747E+00  0.335783E+00
 outer loop
  vertex -0.114064E+02  0.587596E+02  0.376360E+01
  vertex -0.116751E+02  0.584363E+02  0.384520E+01
  vertex -0.101854E+02  0.584362E+02  0.686670E+01
 endloop
endfacet
facet normal -0.184221E+00  0.978748E+00  0.900778E-01
 outer loop
  vertex -0.995100E+01  0.587596E+02  0.672120E+01
  vertex -0.920990E+01  0.589415E+02  0.626040E+01
  vertex -0.105569E+02  0.589415E+02  0.350560E+01
 endloop
endfacet
facet normal -0.182367E+00  0.979126E+00  0.897496E-01
 outer loop
  vertex -0.105569E+02  0.589415E+02  0.350550E+01
  vertex -0.114065E+02  0.587596E+02  0.376360E+01
  vertex -0.995100E+01  0.587596E+02  0.672110E+01
 endloop
endfacet
facet normal -0.145550E+00  0.986840E+00  0.704425E-01
 outer loop
  vertex -0.920990E+01  0.589415E+02  0.626040E+01
  vertex -0.821910E+01  0.591316E+02  0.564450E+01
  vertex -0.942120E+01  0.591316E+02  0.316070E+01
 endloop
endfacet
facet normal -0.143775E+00  0.987110E+00  0.703088E-01
 outer loop
  vertex -0.942110E+01  0.591315E+02  0.316070E+01
  vertex -0.105569E+02  0.589415E+02  0.350560E+01
  vertex -0.920980E+01  0.589415E+02  0.626030E+01
 endloop
endfacet
facet normal -0.369343E+00  0.912306E+00  0.176873E+00
 outer loop
  vertex -0.821910E+01  0.591316E+02  0.564450E+01
  vertex -0.738860E+01  0.595679E+02  0.512830E+01
  vertex -0.846930E+01  0.595679E+02  0.287160E+01
 endloop
endfacet
facet normal -0.365206E+00  0.913982E+00  0.176809E+00
 outer loop
  vertex -0.846930E+01  0.595679E+02  0.287150E+01
  vertex -0.942120E+01  0.591316E+02  0.316070E+01
  vertex -0.821900E+01  0.591315E+02  0.564440E+01
 endloop
endfacet
facet normal -0.781513E+00  0.500814E+00  0.372052E+00
 outer loop
  vertex -0.738860E+01  0.595679E+02  0.512830E+01
  vertex -0.699000E+01  0.603740E+02  0.488050E+01
  vertex -0.801240E+01  0.603740E+02  0.273290E+01
 endloop
endfacet
facet normal -0.778243E+00  0.505386E+00  0.372723E+00
 outer loop
  vertex -0.801230E+01  0.603740E+02  0.273280E+01
  vertex -0.846930E+01  0.595679E+02  0.287160E+01
  vertex -0.738850E+01  0.595679E+02  0.512830E+01
 endloop
endfacet
facet normal -0.896535E+00  0.120993E+00  0.426130E+00
 outer loop
  vertex -0.699000E+01  0.603740E+02  0.488050E+01
  vertex -0.688940E+01  0.613399E+02  0.481790E+01
  vertex -0.789710E+01  0.613399E+02  0.269780E+01
 endloop
endfacet
facet normal -0.896068E+00  0.122605E+00  0.426649E+00
 outer loop
  vertex -0.789700E+01  0.613399E+02  0.269770E+01
  vertex -0.801240E+01  0.603740E+02  0.273290E+01
  vertex -0.698990E+01  0.603740E+02  0.488040E+01
 endloop
endfacet
facet normal -0.898456E+00  0.102322E+00  0.426975E+00
 outer loop
  vertex -0.688940E+01  0.613399E+02  0.481790E+01
  vertex -0.681570E+01  0.622011E+02  0.476660E+01
  vertex -0.781250E+01  0.622011E+02  0.266910E+01
 endloop
endfacet
facet normal -0.898413E+00  0.102498E+00  0.427023E+00
 outer loop
  vertex -0.781250E+01  0.622010E+02  0.266910E+01
  vertex -0.789710E+01  0.613399E+02  0.269780E+01
  vertex -0.688940E+01  0.613399E+02  0.481790E+01
 endloop
endfacet
facet normal -0.281119E+00  0.950334E+00  0.133555E+00
 outer loop
  vertex -0.681570E+01  0.622011E+02  0.476660E+01
  vertex -0.533330E+01  0.627853E+02  0.372990E+01
  vertex -0.611340E+01  0.627852E+02  0.208860E+01
 endloop
endfacet
facet normal -0.280990E+00  0.950369E+00  0.133580E+00
 outer loop
  vertex -0.611330E+01  0.627851E+02  0.208850E+01
  vertex -0.781250E+01  0.622011E+02  0.266910E+01
  vertex -0.681570E+01  0.622010E+02  0.476660E+01
 endloop
endfacet
facet normal -0.302291E-01  0.999441E+00  0.143058E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.611340E+01  0.627852E+02  0.208860E+01
  vertex -0.533330E+01  0.627853E+02  0.372980E+01
 endloop
endfacet
facet normal  0.253497E+00 -0.966124E+00 -0.484037E-01
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.128045E+02  0.442610E+01  0.427510E+01
  vertex -0.135024E+02  0.442610E+01  0.620100E+00
 endloop
endfacet
facet normal -0.923157E+00  0.341514E+00  0.176491E+00
 outer loop
  vertex -0.128045E+02  0.442610E+01  0.427510E+01
  vertex -0.120271E+02  0.666400E+01  0.401100E+01
  vertex -0.126827E+02  0.666400E+01  0.581800E+00
 endloop
endfacet
facet normal -0.923299E+00  0.341212E+00  0.176333E+00
 outer loop
  vertex -0.126827E+02  0.666400E+01  0.581700E+00
  vertex -0.135024E+02  0.442610E+01  0.620100E+00
  vertex -0.128044E+02  0.442600E+01  0.427510E+01
 endloop
endfacet
facet normal -0.587469E+00  0.801377E+00  0.112587E+00
 outer loop
  vertex -0.120271E+02  0.666400E+01  0.401100E+01
  vertex -0.823180E+01  0.962570E+01  0.273360E+01
  vertex -0.867970E+01  0.962570E+01  0.396500E+00
 endloop
endfacet
facet normal -0.587618E+00  0.801299E+00  0.112359E+00
 outer loop
  vertex -0.867960E+01  0.962560E+01  0.396400E+00
  vertex -0.126827E+02  0.666400E+01  0.581800E+00
  vertex -0.120270E+02  0.666400E+01  0.401100E+01
 endloop
endfacet
facet normal -0.926115E+00  0.331131E+00  0.180728E+00
 outer loop
  vertex -0.823180E+01  0.962570E+01  0.273360E+01
  vertex -0.747200E+01  0.119983E+02  0.228000E+01
  vertex -0.785240E+01  0.119983E+02  0.330700E+00
 endloop
endfacet
facet normal -0.927638E+00  0.328441E+00  0.177801E+00
 outer loop
  vertex -0.785230E+01  0.119982E+02  0.330700E+00
  vertex -0.867970E+01  0.962570E+01  0.396500E+00
  vertex -0.823180E+01  0.962560E+01  0.273350E+01
 endloop
endfacet
facet normal -0.824382E+00 -0.539913E+00  0.169966E+00
 outer loop
  vertex -0.747200E+01  0.119983E+02  0.228000E+01
  vertex -0.105866E+02  0.168341E+02  0.253470E+01
  vertex -0.110334E+02  0.168341E+02  0.367600E+00
 endloop
endfacet
facet normal -0.824028E+00 -0.543254E+00  0.160787E+00
 outer loop
  vertex -0.110333E+02  0.168341E+02  0.367500E+00
  vertex -0.785240E+01  0.119983E+02  0.330700E+00
  vertex -0.747200E+01  0.119982E+02  0.227990E+01
 endloop
endfacet
facet normal -0.796791E+00 -0.578036E+00  0.176068E+00
 outer loop
  vertex -0.105866E+02  0.168341E+02  0.253470E+01
  vertex -0.174550E+02  0.265168E+02  0.324050E+01
  vertex -0.180672E+02  0.265168E+02  0.470000E+00
 endloop
endfacet
facet normal -0.797230E+00 -0.580866E+00  0.164375E+00
 outer loop
  vertex -0.180671E+02  0.265167E+02  0.469900E+00
  vertex -0.110334E+02  0.168341E+02  0.367600E+00
  vertex -0.105866E+02  0.168341E+02  0.253460E+01
 endloop
endfacet
facet normal -0.846317E+00 -0.495923E+00  0.194442E+00
 outer loop
  vertex -0.174550E+02  0.265168E+02  0.324050E+01
  vertex -0.242112E+02  0.383280E+02  0.395820E+01
  vertex -0.249887E+02  0.383280E+02  0.574100E+00
 endloop
endfacet
facet normal -0.846807E+00 -0.497892E+00  0.187139E+00
 outer loop
  vertex -0.249887E+02  0.383279E+02  0.574100E+00
  vertex -0.180672E+02  0.265168E+02  0.470000E+00
  vertex -0.174549E+02  0.265167E+02  0.324040E+01
 endloop
endfacet
facet normal -0.961825E+00 -0.161636E+00  0.220830E+00
 outer loop
  vertex -0.242112E+02  0.383280E+02  0.395820E+01
  vertex -0.257520E+02  0.478155E+02  0.419160E+01
  vertex -0.265748E+02  0.478155E+02  0.607900E+00
 endloop
endfacet
facet normal -0.961801E+00 -0.161581E+00  0.220976E+00
 outer loop
  vertex -0.265748E+02  0.478154E+02  0.607900E+00
  vertex -0.249887E+02  0.383280E+02  0.574100E+00
  vertex -0.242112E+02  0.383279E+02  0.395810E+01
 endloop
endfacet
facet normal -0.705878E+00  0.691056E+00  0.155489E+00
 outer loop
  vertex -0.257520E+02  0.478155E+02  0.419160E+01
  vertex -0.208544E+02  0.528995E+02  0.383000E+01
  vertex -0.215757E+02  0.528995E+02  0.555500E+00
 endloop
endfacet
facet normal -0.702854E+00  0.692783E+00  0.161395E+00
 outer loop
  vertex -0.215757E+02  0.528995E+02  0.555400E+00
  vertex -0.265748E+02  0.478155E+02  0.607900E+00
  vertex -0.257520E+02  0.478154E+02  0.419150E+01
 endloop
endfacet
facet normal -0.324266E+00  0.943624E+00  0.665255E-01
 outer loop
  vertex -0.208544E+02  0.528995E+02  0.383000E+01
  vertex -0.143120E+02  0.551808E+02  0.336080E+01
  vertex -0.149015E+02  0.551808E+02  0.487400E+00
 endloop
endfacet
facet normal -0.321969E+00  0.944090E+00  0.709247E-01
 outer loop
  vertex -0.149014E+02  0.551808E+02  0.487300E+00
  vertex -0.215757E+02  0.528995E+02  0.555500E+00
  vertex -0.208544E+02  0.528995E+02  0.382990E+01
 endloop
endfacet
facet normal -0.338485E+00  0.938669E+00  0.657963E-01
 outer loop
  vertex -0.143120E+02  0.551808E+02  0.336080E+01
  vertex -0.108523E+02  0.564356E+02  0.325770E+01
  vertex -0.113937E+02  0.564356E+02  0.472500E+00
 endloop
endfacet
facet normal -0.335746E+00  0.939431E+00  0.688808E-01
 outer loop
  vertex -0.113936E+02  0.564356E+02  0.472400E+00
  vertex -0.149015E+02  0.551808E+02  0.487400E+00
  vertex -0.143120E+02  0.551808E+02  0.336080E+01
 endloop
endfacet
facet normal -0.948191E+00  0.260248E+00  0.182220E+00
 outer loop
  vertex -0.108523E+02  0.564356E+02  0.325770E+01
  vertex -0.105665E+02  0.573211E+02  0.348020E+01
  vertex -0.111383E+02  0.573211E+02  0.504800E+00
 endloop
endfacet
facet normal -0.946166E+00  0.266324E+00  0.183961E+00
 outer loop
  vertex -0.111382E+02  0.573210E+02  0.504800E+00
  vertex -0.113937E+02  0.564356E+02  0.472500E+00
  vertex -0.108522E+02  0.564356E+02  0.325760E+01
 endloop
endfacet
facet normal -0.608591E+00 -0.784733E+00  0.117523E+00
 outer loop
  vertex -0.105665E+02  0.573211E+02  0.348020E+01
  vertex -0.113394E+02  0.579599E+02  0.374320E+01
  vertex -0.119574E+02  0.579599E+02  0.542900E+00
 endloop
endfacet
facet normal -0.607331E+00 -0.785830E+00  0.116709E+00
 outer loop
  vertex -0.119574E+02  0.579598E+02  0.542900E+00
  vertex -0.111383E+02  0.573211E+02  0.504800E+00
  vertex -0.105664E+02  0.573210E+02  0.348020E+01
 endloop
endfacet
facet normal -0.792018E+00 -0.590932E+00  0.153320E+00
 outer loop
  vertex -0.113394E+02  0.579599E+02  0.374320E+01
  vertex -0.116751E+02  0.584363E+02  0.384520E+01
  vertex -0.123115E+02  0.584363E+02  0.557700E+00
 endloop
endfacet
facet normal -0.790924E+00 -0.592552E+00  0.152714E+00
 outer loop
  vertex -0.123114E+02  0.584362E+02  0.557600E+00
  vertex -0.119574E+02  0.579599E+02  0.542900E+00
  vertex -0.113394E+02  0.579598E+02  0.374320E+01
 endloop
endfacet
facet normal -0.743096E+00  0.653602E+00  0.143575E+00
 outer loop
  vertex -0.116751E+02  0.584363E+02  0.384520E+01
  vertex -0.114065E+02  0.587596E+02  0.376360E+01
  vertex -0.120282E+02  0.587596E+02  0.545900E+00
 endloop
endfacet
facet normal -0.741684E+00  0.655198E+00  0.143596E+00
 outer loop
  vertex -0.120282E+02  0.587596E+02  0.545800E+00
  vertex -0.123115E+02  0.584363E+02  0.557700E+00
  vertex -0.116751E+02  0.584362E+02  0.384520E+01
 endloop
endfacet
facet normal -0.198144E+00  0.979434E+00  0.380461E-01
 outer loop
  vertex -0.114065E+02  0.587596E+02  0.376360E+01
  vertex -0.105569E+02  0.589415E+02  0.350560E+01
  vertex -0.111324E+02  0.589415E+02  0.508400E+00
 endloop
endfacet
facet normal -0.197299E+00  0.979602E+00  0.381267E-01
 outer loop
  vertex -0.111323E+02  0.589415E+02  0.508400E+00
  vertex -0.120282E+02  0.587596E+02  0.545900E+00
  vertex -0.114064E+02  0.587596E+02  0.376360E+01
 endloop
endfacet
facet normal -0.156236E+00  0.987273E+00  0.296942E-01
 outer loop
  vertex -0.105569E+02  0.589415E+02  0.350560E+01
  vertex -0.942120E+01  0.591316E+02  0.316070E+01
  vertex -0.993480E+01  0.591316E+02  0.458400E+00
 endloop
endfacet
facet normal -0.155405E+00  0.987400E+00  0.298406E-01
 outer loop
  vertex -0.993480E+01  0.591315E+02  0.458400E+00
  vertex -0.111324E+02  0.589415E+02  0.508400E+00
  vertex -0.105569E+02  0.589415E+02  0.350550E+01
 endloop
endfacet
facet normal -0.396693E+00  0.914915E+00  0.746011E-01
 outer loop
  vertex -0.942120E+01  0.591316E+02  0.316070E+01
  vertex -0.846930E+01  0.595679E+02  0.287160E+01
  vertex -0.893100E+01  0.595679E+02  0.416500E+00
 endloop
endfacet
facet normal -0.394828E+00  0.915682E+00  0.750894E-01
 outer loop
  vertex -0.893090E+01  0.595679E+02  0.416500E+00
  vertex -0.993480E+01  0.591316E+02  0.458400E+00
  vertex -0.942110E+01  0.591315E+02  0.316070E+01
 endloop
endfacet
facet normal -0.847058E+00  0.507363E+00  0.158354E+00
 outer loop
  vertex -0.846930E+01  0.595679E+02  0.287160E+01
  vertex -0.801240E+01  0.603740E+02  0.273290E+01
  vertex -0.844920E+01  0.603740E+02  0.396400E+00
 endloop
endfacet
facet normal -0.845643E+00  0.509506E+00  0.159036E+00
 outer loop
  vertex -0.844910E+01  0.603740E+02  0.396400E+00
  vertex -0.893100E+01  0.595679E+02  0.416500E+00
  vertex -0.846930E+01  0.595679E+02  0.287150E+01
 endloop
endfacet
facet normal -0.975559E+00  0.123068E+00  0.182042E+00
 outer loop
  vertex -0.801240E+01  0.603740E+02  0.273290E+01
  vertex -0.789710E+01  0.613399E+02  0.269780E+01
  vertex -0.832750E+01  0.613399E+02  0.391300E+00
 endloop
endfacet
facet normal -0.975390E+00  0.123877E+00  0.182395E+00
 outer loop
  vertex -0.832750E+01  0.613399E+02  0.391200E+00
  vertex -0.844920E+01  0.603740E+02  0.396400E+00
  vertex -0.801230E+01  0.603740E+02  0.273280E+01
 endloop
endfacet
facet normal -0.977884E+00  0.102145E+00  0.182507E+00
 outer loop
  vertex -0.789710E+01  0.613399E+02  0.269780E+01
  vertex -0.781250E+01  0.622011E+02  0.266910E+01
  vertex -0.823840E+01  0.622011E+02  0.387100E+00
 endloop
endfacet
facet normal -0.977888E+00  0.102075E+00  0.182527E+00
 outer loop
  vertex -0.823840E+01  0.622010E+02  0.387100E+00
  vertex -0.832750E+01  0.613399E+02  0.391300E+00
  vertex -0.789700E+01  0.613399E+02  0.269770E+01
 endloop
endfacet
facet normal -0.306987E+00  0.949985E+00  0.573365E-01
 outer loop
  vertex -0.781250E+01  0.622011E+02  0.266910E+01
  vertex -0.611340E+01  0.627852E+02  0.208860E+01
  vertex -0.644660E+01  0.627853E+02  0.302900E+00
 endloop
endfacet
facet normal -0.307017E+00  0.949975E+00  0.573413E-01
 outer loop
  vertex -0.644650E+01  0.627853E+02  0.302800E+00
  vertex -0.823840E+01  0.622011E+02  0.387100E+00
  vertex -0.781250E+01  0.622010E+02  0.266910E+01
 endloop
endfacet
facet normal -0.329907E-01  0.999436E+00  0.627122E-02
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.644660E+01  0.627853E+02  0.302900E+00
  vertex -0.611330E+01  0.627851E+02  0.208850E+01
 endloop
endfacet
facet normal  0.256853E+00 -0.966137E+00  0.246071E-01
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.135024E+02  0.442610E+01  0.620100E+00
  vertex -0.131482E+02  0.442610E+01 -0.307710E+01
 endloop
endfacet
facet normal -0.935699E+00  0.341193E+00 -0.897449E-01
 outer loop
  vertex -0.135024E+02  0.442610E+01  0.620100E+00
  vertex -0.126827E+02  0.666400E+01  0.581800E+00
  vertex -0.123500E+02  0.666400E+01 -0.288700E+01
 endloop
endfacet
facet normal -0.935658E+00  0.341338E+00 -0.896290E-01
 outer loop
  vertex -0.123500E+02  0.666400E+01 -0.288700E+01
  vertex -0.131482E+02  0.442610E+01 -0.307710E+01
  vertex -0.135024E+02  0.442600E+01  0.620100E+00
 endloop
endfacet
facet normal -0.595511E+00  0.801304E+00 -0.572587E-01
 outer loop
  vertex -0.126827E+02  0.666400E+01  0.581800E+00
  vertex -0.867970E+01  0.962570E+01  0.396500E+00
  vertex -0.845240E+01  0.962570E+01 -0.196750E+01
 endloop
endfacet
facet normal -0.595444E+00  0.801365E+00 -0.571119E-01
 outer loop
  vertex -0.845240E+01  0.962560E+01 -0.196740E+01
  vertex -0.123500E+02  0.666400E+01 -0.288700E+01
  vertex -0.126827E+02  0.666400E+01  0.581700E+00
 endloop
endfacet
facet normal -0.941047E+00  0.325588E+00 -0.917756E-01
 outer loop
  vertex -0.867970E+01  0.962570E+01  0.396500E+00
  vertex -0.785240E+01  0.119983E+02  0.330700E+00
  vertex -0.766010E+01  0.119983E+02 -0.164110E+01
 endloop
endfacet
facet normal -0.940807E+00  0.326662E+00 -0.904092E-01
 outer loop
  vertex -0.766000E+01  0.119982E+02 -0.164110E+01
  vertex -0.845240E+01  0.962570E+01 -0.196750E+01
  vertex -0.867960E+01  0.962560E+01  0.396400E+00
 endloop
endfacet
facet normal -0.832751E+00 -0.547139E+00 -0.846425E-01
 outer loop
  vertex -0.785240E+01  0.119983E+02  0.330700E+00
  vertex -0.110334E+02  0.168341E+02  0.367600E+00
  vertex -0.108106E+02  0.168341E+02 -0.182440E+01
 endloop
endfacet
facet normal -0.833686E+00 -0.546222E+00 -0.812906E-01
 outer loop
  vertex -0.108106E+02  0.168341E+02 -0.182430E+01
  vertex -0.766010E+01  0.119983E+02 -0.164110E+01
  vertex -0.785230E+01  0.119982E+02  0.330700E+00
 endloop
endfacet
facet normal -0.806466E+00 -0.584927E+00 -0.864481E-01
 outer loop
  vertex -0.110334E+02  0.168341E+02  0.367600E+00
  vertex -0.180672E+02  0.265168E+02  0.470000E+00
  vertex -0.177668E+02  0.265168E+02 -0.233240E+01
 endloop
endfacet
facet normal -0.807364E+00 -0.584324E+00 -0.820293E-01
 outer loop
  vertex -0.177667E+02  0.265167E+02 -0.233240E+01
  vertex -0.108106E+02  0.168341E+02 -0.182440E+01
  vertex -0.110333E+02  0.168341E+02  0.367500E+00
 endloop
endfacet
facet normal -0.859242E+00 -0.502689E+00 -0.949082E-01
 outer loop
  vertex -0.180672E+02  0.265168E+02  0.470000E+00
  vertex -0.249887E+02  0.383280E+02  0.574100E+00
  vertex -0.246106E+02  0.383280E+02 -0.284900E+01
 endloop
endfacet
facet normal -0.859810E+00 -0.502229E+00 -0.921569E-01
 outer loop
  vertex -0.246105E+02  0.383279E+02 -0.284890E+01
  vertex -0.177668E+02  0.265168E+02 -0.233240E+01
  vertex -0.180671E+02  0.265167E+02  0.469900E+00
 endloop
endfacet
facet normal -0.980586E+00 -0.163547E+00 -0.108179E+00
 outer loop
  vertex -0.249887E+02  0.383280E+02  0.574100E+00
  vertex -0.265748E+02  0.478155E+02  0.607900E+00
  vertex -0.261749E+02  0.478155E+02 -0.301700E+01
 endloop
endfacet
facet normal -0.980564E+00 -0.163594E+00 -0.108314E+00
 outer loop
  vertex -0.261749E+02  0.478154E+02 -0.301690E+01
  vertex -0.246106E+02  0.383280E+02 -0.284900E+01
  vertex -0.249887E+02  0.383279E+02  0.574100E+00
 endloop
endfacet
facet normal -0.711370E+00  0.698708E+00 -0.758986E-01
 outer loop
  vertex -0.265748E+02  0.478155E+02  0.607900E+00
  vertex -0.215757E+02  0.528995E+02  0.555500E+00
  vertex -0.212223E+02  0.528995E+02 -0.275680E+01
 endloop
endfacet
facet normal -0.712071E+00  0.697701E+00 -0.785368E-01
 outer loop
  vertex -0.212222E+02  0.528995E+02 -0.275670E+01
  vertex -0.261749E+02  0.478155E+02 -0.301700E+01
  vertex -0.265748E+02  0.478154E+02  0.607900E+00
 endloop
endfacet
facet normal -0.323562E+00  0.945643E+00 -0.326635E-01
 outer loop
  vertex -0.215757E+02  0.528995E+02  0.555500E+00
  vertex -0.149015E+02  0.551808E+02  0.487400E+00
  vertex -0.146081E+02  0.551808E+02 -0.241900E+01
 endloop
endfacet
facet normal -0.324280E+00  0.945328E+00 -0.345997E-01
 outer loop
  vertex -0.146080E+02  0.551808E+02 -0.241890E+01
  vertex -0.212223E+02  0.528995E+02 -0.275680E+01
  vertex -0.215757E+02  0.528995E+02  0.555400E+00
 endloop
endfacet
facet normal -0.336759E+00  0.941024E+00 -0.326563E-01
 outer loop
  vertex -0.149015E+02  0.551808E+02  0.487400E+00
  vertex -0.113937E+02  0.564356E+02  0.472500E+00
  vertex -0.111205E+02  0.564356E+02 -0.234480E+01
 endloop
endfacet
facet normal -0.337695E+00  0.940638E+00 -0.340797E-01
 outer loop
  vertex -0.111204E+02  0.564356E+02 -0.234470E+01
  vertex -0.146081E+02  0.551808E+02 -0.241900E+01
  vertex -0.149014E+02  0.551808E+02  0.487300E+00
 endloop
endfacet
facet normal -0.955850E+00  0.279050E+00 -0.920979E-01
 outer loop
  vertex -0.113937E+02  0.564356E+02  0.472500E+00
  vertex -0.111383E+02  0.573211E+02  0.504800E+00
  vertex -0.108483E+02  0.573211E+02 -0.250500E+01
 endloop
endfacet
facet normal -0.956292E+00  0.277329E+00 -0.927035E-01
 outer loop
  vertex -0.108482E+02  0.573210E+02 -0.250500E+01
  vertex -0.111205E+02  0.564356E+02 -0.234480E+01
  vertex -0.113936E+02  0.564356E+02  0.472400E+00
 endloop
endfacet
facet normal -0.615603E+00 -0.785797E+00 -0.596377E-01
 outer loop
  vertex -0.111383E+02  0.573211E+02  0.504800E+00
  vertex -0.119574E+02  0.579599E+02  0.542900E+00
  vertex -0.116438E+02  0.579599E+02 -0.269420E+01
 endloop
endfacet
facet normal -0.616385E+00 -0.785202E+00 -0.593952E-01
 outer loop
  vertex -0.116437E+02  0.579598E+02 -0.269420E+01
  vertex -0.108483E+02  0.573211E+02 -0.250500E+01
  vertex -0.111382E+02  0.573210E+02  0.504800E+00
 endloop
endfacet
facet normal -0.801301E+00 -0.593176E+00 -0.778337E-01
 outer loop
  vertex -0.119574E+02  0.579599E+02  0.542900E+00
  vertex -0.123115E+02  0.584363E+02  0.557700E+00
  vertex -0.119885E+02  0.584363E+02 -0.276760E+01
 endloop
endfacet
facet normal -0.802013E+00 -0.592229E+00 -0.777148E-01
 outer loop
  vertex -0.119884E+02  0.584362E+02 -0.276760E+01
  vertex -0.116438E+02  0.579599E+02 -0.269420E+01
  vertex -0.119574E+02  0.579598E+02  0.542900E+00
 endloop
endfacet
facet normal -0.751423E+00  0.655788E+00 -0.728383E-01
 outer loop
  vertex -0.123115E+02  0.584363E+02  0.557700E+00
  vertex -0.120282E+02  0.587596E+02  0.545900E+00
  vertex -0.117127E+02  0.587596E+02 -0.270890E+01
 endloop
endfacet
facet normal -0.752044E+00  0.655056E+00 -0.730093E-01
 outer loop
  vertex -0.117126E+02  0.587596E+02 -0.270880E+01
  vertex -0.119885E+02  0.584363E+02 -0.276760E+01
  vertex -0.123114E+02  0.584362E+02  0.557600E+00
 endloop
endfacet
facet normal -0.199734E+00  0.979661E+00 -0.192447E-01
 outer loop
  vertex -0.120282E+02  0.587596E+02  0.545900E+00
  vertex -0.111324E+02  0.589415E+02  0.508400E+00
  vertex -0.108403E+02  0.589415E+02 -0.252320E+01
 endloop
endfacet
facet normal -0.200097E+00  0.979584E+00 -0.193968E-01
 outer loop
  vertex -0.108402E+02  0.589415E+02 -0.252320E+01
  vertex -0.117127E+02  0.587596E+02 -0.270890E+01
  vertex -0.120282E+02  0.587596E+02  0.545800E+00
 endloop
endfacet
facet normal -0.157363E+00  0.987427E+00 -0.150029E-01
 outer loop
  vertex -0.111324E+02  0.589415E+02  0.508400E+00
  vertex -0.993480E+01  0.591316E+02  0.458400E+00
  vertex -0.967420E+01  0.591316E+02 -0.227500E+01
 endloop
endfacet
facet normal -0.157647E+00  0.987379E+00 -0.151844E-01
 outer loop
  vertex -0.967420E+01  0.591315E+02 -0.227500E+01
  vertex -0.108403E+02  0.589415E+02 -0.252320E+01
  vertex -0.111323E+02  0.589415E+02  0.508400E+00
 endloop
endfacet
facet normal -0.399664E+00  0.915886E+00 -0.377068E-01
 outer loop
  vertex -0.993480E+01  0.591316E+02  0.458400E+00
  vertex -0.893100E+01  0.595679E+02  0.416500E+00
  vertex -0.869670E+01  0.595679E+02 -0.206690E+01
 endloop
endfacet
facet normal -0.400507E+00  0.915499E+00 -0.381507E-01
 outer loop
  vertex -0.869670E+01  0.595679E+02 -0.206690E+01
  vertex -0.967420E+01  0.591316E+02 -0.227500E+01
  vertex -0.993480E+01  0.591315E+02  0.458400E+00
 endloop
endfacet
facet normal -0.856471E+00  0.509904E+00 -0.803416E-01
 outer loop
  vertex -0.893100E+01  0.595679E+02  0.416500E+00
  vertex -0.844920E+01  0.603740E+02  0.396400E+00
  vertex -0.822750E+01  0.603740E+02 -0.196700E+01
 endloop
endfacet
facet normal -0.856995E+00  0.508947E+00 -0.808198E-01
 outer loop
  vertex -0.822740E+01  0.603740E+02 -0.196700E+01
  vertex -0.869670E+01  0.595679E+02 -0.206690E+01
  vertex -0.893090E+01  0.595679E+02  0.416500E+00
 endloop
endfacet
facet normal -0.987964E+00  0.123991E+00 -0.924827E-01
 outer loop
  vertex -0.844920E+01  0.603740E+02  0.396400E+00
  vertex -0.832750E+01  0.613399E+02  0.391300E+00
  vertex -0.810910E+01  0.613399E+02 -0.194180E+01
 endloop
endfacet
facet normal -0.988007E+00  0.123536E+00 -0.926385E-01
 outer loop
  vertex -0.810910E+01  0.613399E+02 -0.194170E+01
  vertex -0.822750E+01  0.603740E+02 -0.196700E+01
  vertex -0.844910E+01  0.603740E+02  0.396400E+00
 endloop
endfacet
facet normal -0.990451E+00  0.102020E+00 -0.927290E-01
 outer loop
  vertex -0.832750E+01  0.613399E+02  0.391300E+00
  vertex -0.823840E+01  0.622011E+02  0.387100E+00
  vertex -0.802230E+01  0.622011E+02 -0.192110E+01
 endloop
endfacet
facet normal -0.990435E+00  0.102182E+00 -0.927180E-01
 outer loop
  vertex -0.802220E+01  0.622010E+02 -0.192110E+01
  vertex -0.810910E+01  0.613399E+02 -0.194180E+01
  vertex -0.832750E+01  0.613399E+02  0.391200E+00
 endloop
endfacet
facet normal -0.311087E+00  0.949935E+00 -0.291246E-01
 outer loop
  vertex -0.823840E+01  0.622011E+02  0.387100E+00
  vertex -0.644660E+01  0.627853E+02  0.302900E+00
  vertex -0.627750E+01  0.627853E+02 -0.150330E+01
 endloop
endfacet
facet normal -0.311095E+00  0.949934E+00 -0.290848E-01
 outer loop
  vertex -0.627750E+01  0.627853E+02 -0.150320E+01
  vertex -0.802230E+01  0.622011E+02 -0.192110E+01
  vertex -0.823840E+01  0.622010E+02  0.387100E+00
 endloop
endfacet
facet normal -0.334329E-01  0.999436E+00 -0.312837E-02
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.627750E+01  0.627853E+02 -0.150330E+01
  vertex -0.644650E+01  0.627853E+02  0.302800E+00
 endloop
endfacet
facet normal  0.240965E+00 -0.966118E+00  0.924752E-01
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.131482E+02  0.442610E+01 -0.307710E+01
  vertex -0.118103E+02  0.442610E+01 -0.656330E+01
 endloop
endfacet
facet normal -0.877341E+00  0.341556E+00 -0.337063E+00
 outer loop
  vertex -0.131482E+02  0.442610E+01 -0.307710E+01
  vertex -0.123500E+02  0.666400E+01 -0.288700E+01
  vertex -0.110934E+02  0.666400E+01 -0.615780E+01
 endloop
endfacet
facet normal -0.877302E+00  0.342043E+00 -0.336673E+00
 outer loop
  vertex -0.110934E+02  0.666400E+01 -0.615780E+01
  vertex -0.118103E+02  0.442610E+01 -0.656330E+01
  vertex -0.131482E+02  0.442600E+01 -0.307710E+01
 endloop
endfacet
facet normal -0.558199E+00  0.801354E+00 -0.215046E+00
 outer loop
  vertex -0.123500E+02  0.666400E+01 -0.288700E+01
  vertex -0.845240E+01  0.962570E+01 -0.196750E+01
  vertex -0.759360E+01  0.962570E+01 -0.419670E+01
 endloop
endfacet
facet normal -0.558132E+00  0.801567E+00 -0.214427E+00
 outer loop
  vertex -0.759350E+01  0.962560E+01 -0.419670E+01
  vertex -0.110934E+02  0.666400E+01 -0.615780E+01
  vertex -0.123500E+02  0.666400E+01 -0.288700E+01
 endloop
endfacet
facet normal -0.874152E+00  0.339665E+00 -0.347112E+00
 outer loop
  vertex -0.845240E+01  0.962570E+01 -0.196750E+01
  vertex -0.766010E+01  0.119983E+02 -0.164110E+01
  vertex -0.692180E+01  0.119983E+02 -0.350040E+01
 endloop
endfacet
facet normal -0.875249E+00  0.346789E+00 -0.337159E+00
 outer loop
  vertex -0.692180E+01  0.119982E+02 -0.350040E+01
  vertex -0.759360E+01  0.962570E+01 -0.419670E+01
  vertex -0.845240E+01  0.962560E+01 -0.196740E+01
 endloop
endfacet
facet normal -0.781800E+00 -0.522251E+00 -0.340650E+00
 outer loop
  vertex -0.766010E+01  0.119983E+02 -0.164110E+01
  vertex -0.108106E+02  0.168341E+02 -0.182440E+01
  vertex -0.991000E+01  0.168341E+02 -0.389130E+01
 endloop
endfacet
facet normal -0.795517E+00 -0.517086E+00 -0.315872E+00
 outer loop
  vertex -0.990990E+01  0.168341E+02 -0.389120E+01
  vertex -0.692180E+01  0.119983E+02 -0.350040E+01
  vertex -0.766000E+01  0.119982E+02 -0.164110E+01
 endloop
endfacet
facet normal -0.747190E+00 -0.555903E+00 -0.364250E+00
 outer loop
  vertex -0.108106E+02  0.168341E+02 -0.182440E+01
  vertex -0.177668E+02  0.265168E+02 -0.233240E+01
  vertex -0.164786E+02  0.265168E+02 -0.497490E+01
 endloop
endfacet
facet normal -0.762811E+00 -0.554668E+00 -0.332360E+00
 outer loop
  vertex -0.164785E+02  0.265167E+02 -0.497480E+01
  vertex -0.991000E+01  0.168341E+02 -0.389130E+01
  vertex -0.108106E+02  0.168341E+02 -0.182430E+01
 endloop
endfacet
facet normal -0.782926E+00 -0.471409E+00 -0.405956E+00
 outer loop
  vertex -0.177668E+02  0.265168E+02 -0.233240E+01
  vertex -0.246106E+02  0.383280E+02 -0.284900E+01
  vertex -0.229370E+02  0.383280E+02 -0.607670E+01
 endloop
endfacet
facet normal -0.793443E+00 -0.469942E+00 -0.386786E+00
 outer loop
  vertex -0.229370E+02  0.383279E+02 -0.607670E+01
  vertex -0.164786E+02  0.265168E+02 -0.497490E+01
  vertex -0.177667E+02  0.265167E+02 -0.233240E+01
 endloop
endfacet
facet normal -0.877208E+00 -0.152694E+00 -0.455183E+00
 outer loop
  vertex -0.246106E+02  0.383280E+02 -0.284900E+01
  vertex -0.261749E+02  0.478155E+02 -0.301700E+01
  vertex -0.244013E+02  0.478155E+02 -0.643500E+01
 endloop
endfacet
facet normal -0.877376E+00 -0.152590E+00 -0.454893E+00
 outer loop
  vertex -0.244013E+02  0.478154E+02 -0.643490E+01
  vertex -0.229370E+02  0.383280E+02 -0.607670E+01
  vertex -0.246105E+02  0.383279E+02 -0.284890E+01
 endloop
endfacet
facet normal -0.668748E+00  0.668154E+00 -0.326109E+00
 outer loop
  vertex -0.261749E+02  0.478155E+02 -0.301700E+01
  vertex -0.212223E+02  0.528995E+02 -0.275680E+01
  vertex -0.196993E+02  0.528995E+02 -0.588000E+01
 endloop
endfacet
facet normal -0.669266E+00  0.656886E+00 -0.347253E+00
 outer loop
  vertex -0.196993E+02  0.528995E+02 -0.588000E+01
  vertex -0.244013E+02  0.478155E+02 -0.643500E+01
  vertex -0.261749E+02  0.478154E+02 -0.301690E+01
 endloop
endfacet
facet normal -0.316636E+00  0.938457E+00 -0.137984E+00
 outer loop
  vertex -0.212223E+02  0.528995E+02 -0.275680E+01
  vertex -0.146081E+02  0.551808E+02 -0.241900E+01
  vertex -0.134138E+02  0.551808E+02 -0.515960E+01
 endloop
endfacet
facet normal -0.321059E+00  0.934031E+00 -0.156546E+00
 outer loop
  vertex -0.134138E+02  0.551808E+02 -0.515950E+01
  vertex -0.196993E+02  0.528995E+02 -0.588000E+01
  vertex -0.212222E+02  0.528995E+02 -0.275670E+01
 endloop
endfacet
facet normal -0.333076E+00  0.933577E+00 -0.132265E+00
 outer loop
  vertex -0.146081E+02  0.551808E+02 -0.241900E+01
  vertex -0.111205E+02  0.564356E+02 -0.234480E+01
  vertex -0.100656E+02  0.564356E+02 -0.500130E+01
 endloop
endfacet
facet normal -0.340872E+00  0.928303E+00 -0.148527E+00
 outer loop
  vertex -0.100656E+02  0.564356E+02 -0.500120E+01
  vertex -0.134138E+02  0.551808E+02 -0.515960E+01
  vertex -0.146080E+02  0.551808E+02 -0.241890E+01
 endloop
endfacet
facet normal -0.910624E+00  0.216212E+00 -0.352160E+00
 outer loop
  vertex -0.111205E+02  0.564356E+02 -0.234480E+01
  vertex -0.108483E+02  0.573211E+02 -0.250500E+01
  vertex -0.975080E+01  0.573210E+02 -0.534300E+01
 endloop
endfacet
facet normal -0.913402E+00  0.184856E+00 -0.362665E+00
 outer loop
  vertex -0.975080E+01  0.573209E+02 -0.534290E+01
  vertex -0.100656E+02  0.564356E+02 -0.500130E+01
  vertex -0.111204E+02  0.564356E+02 -0.234470E+01
 endloop
endfacet
facet normal -0.577258E+00 -0.785221E+00 -0.224057E+00
 outer loop
  vertex -0.108483E+02  0.573211E+02 -0.250500E+01
  vertex -0.116438E+02  0.579599E+02 -0.269420E+01
  vertex -0.104590E+02  0.579599E+02 -0.574670E+01
 endloop
endfacet
facet normal -0.579327E+00 -0.783708E+00 -0.224014E+00
 outer loop
  vertex -0.104589E+02  0.579598E+02 -0.574660E+01
  vertex -0.975080E+01  0.573210E+02 -0.534300E+01
  vertex -0.108482E+02  0.573210E+02 -0.250500E+01
 endloop
endfacet
facet normal -0.752662E+00 -0.589707E+00 -0.292822E+00
 outer loop
  vertex -0.116438E+02  0.579599E+02 -0.269420E+01
  vertex -0.119885E+02  0.584363E+02 -0.276760E+01
  vertex -0.107686E+02  0.584363E+02 -0.590320E+01
 endloop
endfacet
facet normal -0.754803E+00 -0.586893E+00 -0.292964E+00
 outer loop
  vertex -0.107686E+02  0.584362E+02 -0.590320E+01
  vertex -0.104590E+02  0.579599E+02 -0.574670E+01
  vertex -0.116437E+02  0.579598E+02 -0.269420E+01
 endloop
endfacet
facet normal -0.706439E+00  0.652448E+00 -0.274326E+00
 outer loop
  vertex -0.119885E+02  0.584363E+02 -0.276760E+01
  vertex -0.117127E+02  0.587596E+02 -0.270890E+01
  vertex -0.105209E+02  0.587596E+02 -0.577800E+01
 endloop
endfacet
facet normal -0.708417E+00  0.649776E+00 -0.275565E+00
 outer loop
  vertex -0.105208E+02  0.587596E+02 -0.577790E+01
  vertex -0.107686E+02  0.584363E+02 -0.590320E+01
  vertex -0.119884E+02  0.584362E+02 -0.276760E+01
 endloop
endfacet
facet normal -0.188698E+00  0.979333E+00 -0.728072E-01
 outer loop
  vertex -0.117127E+02  0.587596E+02 -0.270890E+01
  vertex -0.108403E+02  0.589415E+02 -0.252320E+01
  vertex -0.973730E+01  0.589415E+02 -0.538190E+01
 endloop
endfacet
facet normal -0.189949E+00  0.979020E+00 -0.737528E-01
 outer loop
  vertex -0.973720E+01  0.589415E+02 -0.538180E+01
  vertex -0.105209E+02  0.587596E+02 -0.577800E+01
  vertex -0.117126E+02  0.587596E+02 -0.270880E+01
 endloop
endfacet
facet normal -0.148838E+00  0.987226E+00 -0.568466E-01
 outer loop
  vertex -0.108403E+02  0.589415E+02 -0.252320E+01
  vertex -0.967420E+01  0.591316E+02 -0.227500E+01
  vertex -0.868980E+01  0.591316E+02 -0.485240E+01
 endloop
endfacet
facet normal -0.149808E+00  0.987024E+00 -0.577968E-01
 outer loop
  vertex -0.868980E+01  0.591315E+02 -0.485230E+01
  vertex -0.973730E+01  0.589415E+02 -0.538190E+01
  vertex -0.108402E+02  0.589415E+02 -0.252320E+01
 endloop
endfacet
facet normal -0.377900E+00  0.914767E+00 -0.142804E+00
 outer loop
  vertex -0.967420E+01  0.591316E+02 -0.227500E+01
  vertex -0.869670E+01  0.595679E+02 -0.206690E+01
  vertex -0.781180E+01  0.595679E+02 -0.440860E+01
 endloop
endfacet
facet normal -0.380420E+00  0.913335E+00 -0.145261E+00
 outer loop
  vertex -0.781180E+01  0.595679E+02 -0.440850E+01
  vertex -0.868980E+01  0.591316E+02 -0.485240E+01
  vertex -0.967420E+01  0.591315E+02 -0.227500E+01
 endloop
endfacet
facet normal -0.806797E+00  0.507168E+00 -0.303083E+00
 outer loop
  vertex -0.869670E+01  0.595679E+02 -0.206690E+01
  vertex -0.822750E+01  0.603740E+02 -0.196700E+01
  vertex -0.739030E+01  0.603740E+02 -0.419560E+01
 endloop
endfacet
facet normal -0.808252E+00  0.503431E+00 -0.305429E+00
 outer loop
  vertex -0.739020E+01  0.603740E+02 -0.419560E+01
  vertex -0.781180E+01  0.595679E+02 -0.440860E+01
  vertex -0.869670E+01  0.595679E+02 -0.206690E+01
 endloop
endfacet
facet normal -0.929206E+00  0.122994E+00 -0.348495E+00
 outer loop
  vertex -0.822750E+01  0.603740E+02 -0.196700E+01
  vertex -0.810910E+01  0.613399E+02 -0.194180E+01
  vertex -0.728400E+01  0.613399E+02 -0.414180E+01
 endloop
endfacet
facet normal -0.929166E+00  0.121829E+00 -0.349010E+00
 outer loop
  vertex -0.728390E+01  0.613399E+02 -0.414170E+01
  vertex -0.739030E+01  0.603740E+02 -0.419560E+01
  vertex -0.822740E+01  0.603740E+02 -0.196700E+01
 endloop
endfacet
facet normal -0.931409E+00  0.102273E+00 -0.349310E+00
 outer loop
  vertex -0.810910E+01  0.613399E+02 -0.194180E+01
  vertex -0.802230E+01  0.622011E+02 -0.192110E+01
  vertex -0.720600E+01  0.622011E+02 -0.409770E+01
 endloop
endfacet
facet normal -0.931402E+00  0.102365E+00 -0.349302E+00
 outer loop
  vertex -0.720590E+01  0.622010E+02 -0.409770E+01
  vertex -0.728400E+01  0.613399E+02 -0.414180E+01
  vertex -0.810910E+01  0.613399E+02 -0.194170E+01
 endloop
endfacet
facet normal -0.291919E+00  0.950156E+00 -0.109487E+00
 outer loop
  vertex -0.802230E+01  0.622011E+02 -0.192110E+01
  vertex -0.627750E+01  0.627853E+02 -0.150330E+01
  vertex -0.563870E+01  0.627853E+02 -0.320650E+01
 endloop
endfacet
facet normal -0.291940E+00  0.950156E+00 -0.109431E+00
 outer loop
  vertex -0.563870E+01  0.627853E+02 -0.320650E+01
  vertex -0.720600E+01  0.622011E+02 -0.409770E+01
  vertex -0.802220E+01  0.622010E+02 -0.192110E+01
 endloop
endfacet
facet normal -0.313653E-01  0.999439E+00 -0.117632E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.563870E+01  0.627853E+02 -0.320650E+01
  vertex -0.627750E+01  0.627853E+02 -0.150320E+01
 endloop
endfacet
facet normal  0.208792E+00 -0.966314E+00  0.150476E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.118103E+02  0.442610E+01 -0.656330E+01
  vertex -0.963250E+01  0.442610E+01 -0.958510E+01
 endloop
endfacet
facet normal -0.761591E+00  0.343541E+00 -0.549508E+00
 outer loop
  vertex -0.118103E+02  0.442610E+01 -0.656330E+01
  vertex -0.110934E+02  0.666400E+01 -0.615780E+01
  vertex -0.904780E+01  0.666400E+01 -0.899290E+01
 endloop
endfacet
facet normal -0.761687E+00  0.344286E+00 -0.548908E+00
 outer loop
  vertex -0.904780E+01  0.666400E+01 -0.899280E+01
  vertex -0.963250E+01  0.442610E+01 -0.958510E+01
  vertex -0.118102E+02  0.442600E+01 -0.656330E+01
 endloop
endfacet
facet normal -0.483179E+00  0.802599E+00 -0.349818E+00
 outer loop
  vertex -0.110934E+02  0.666400E+01 -0.615780E+01
  vertex -0.759360E+01  0.962570E+01 -0.419670E+01
  vertex -0.619470E+01  0.962570E+01 -0.612890E+01
 endloop
endfacet
facet normal -0.483368E+00  0.802945E+00 -0.348763E+00
 outer loop
  vertex -0.619460E+01  0.962560E+01 -0.612890E+01
  vertex -0.904780E+01  0.666400E+01 -0.899290E+01
  vertex -0.110934E+02  0.666400E+01 -0.615780E+01
 endloop
endfacet
facet normal -0.737613E+00  0.373868E+00 -0.562272E+00
 outer loop
  vertex -0.759360E+01  0.962570E+01 -0.419670E+01
  vertex -0.692180E+01  0.119983E+02 -0.350040E+01
  vertex -0.569330E+01  0.119983E+02 -0.511200E+01
 endloop
endfacet
facet normal -0.746140E+00  0.389258E+00 -0.540142E+00
 outer loop
  vertex -0.569320E+01  0.119982E+02 -0.511190E+01
  vertex -0.619470E+01  0.962570E+01 -0.612890E+01
  vertex -0.759350E+01  0.962560E+01 -0.419670E+01
 endloop
endfacet
facet normal -0.663892E+00 -0.458026E+00 -0.591151E+00
 outer loop
  vertex -0.692180E+01  0.119983E+02 -0.350040E+01
  vertex -0.991000E+01  0.168341E+02 -0.389130E+01
  vertex -0.831470E+01  0.168341E+02 -0.568290E+01
 endloop
endfacet
facet normal -0.710553E+00 -0.449115E+00 -0.541673E+00
 outer loop
  vertex -0.831470E+01  0.168341E+02 -0.568280E+01
  vertex -0.569330E+01  0.119983E+02 -0.511200E+01
  vertex -0.692180E+01  0.119982E+02 -0.350040E+01
 endloop
endfacet
facet normal -0.601382E+00 -0.479489E+00 -0.639085E+00
 outer loop
  vertex -0.991000E+01  0.168341E+02 -0.389130E+01
  vertex -0.164786E+02  0.265168E+02 -0.497490E+01
  vertex -0.140445E+02  0.265168E+02 -0.726540E+01
 endloop
endfacet
facet normal -0.654246E+00 -0.482353E+00 -0.582493E+00
 outer loop
  vertex -0.140445E+02  0.265167E+02 -0.726530E+01
  vertex -0.831470E+01  0.168341E+02 -0.568290E+01
  vertex -0.990990E+01  0.168341E+02 -0.389120E+01
 endloop
endfacet
facet normal -0.598675E+00 -0.392492E+00 -0.698240E+00
 outer loop
  vertex -0.164786E+02  0.265168E+02 -0.497490E+01
  vertex -0.229370E+02  0.383280E+02 -0.607670E+01
  vertex -0.196739E+02  0.383280E+02 -0.887450E+01
 endloop
endfacet
facet normal -0.630528E+00 -0.391803E+00 -0.670019E+00
 outer loop
  vertex -0.196739E+02  0.383279E+02 -0.887450E+01
  vertex -0.140445E+02  0.265168E+02 -0.726540E+01
  vertex -0.164785E+02  0.265167E+02 -0.497480E+01
 endloop
endfacet
facet normal -0.644614E+00 -0.127954E+00 -0.753725E+00
 outer loop
  vertex -0.229370E+02  0.383280E+02 -0.607670E+01
  vertex -0.244013E+02  0.478155E+02 -0.643500E+01
  vertex -0.209370E+02  0.478155E+02 -0.939780E+01
 endloop
endfacet
facet normal -0.645593E+00 -0.127482E+00 -0.752966E+00
 outer loop
  vertex -0.209370E+02  0.478154E+02 -0.939780E+01
  vertex -0.196739E+02  0.383280E+02 -0.887450E+01
  vertex -0.229370E+02  0.383279E+02 -0.607670E+01
 endloop
endfacet
facet normal -0.556772E+00  0.579866E+00 -0.594777E+00
 outer loop
  vertex -0.244013E+02  0.478155E+02 -0.643500E+01
  vertex -0.196993E+02  0.528995E+02 -0.588000E+01
  vertex -0.168072E+02  0.528995E+02 -0.858730E+01
 endloop
endfacet
facet normal -0.545183E+00  0.544488E+00 -0.637423E+00
 outer loop
  vertex -0.168071E+02  0.528995E+02 -0.858730E+01
  vertex -0.209370E+02  0.478155E+02 -0.939780E+01
  vertex -0.244013E+02  0.478154E+02 -0.643490E+01
 endloop
endfacet
facet normal -0.300946E+00  0.914532E+00 -0.270302E+00
 outer loop
  vertex -0.196993E+02  0.528995E+02 -0.588000E+01
  vertex -0.134138E+02  0.551808E+02 -0.515960E+01
  vertex -0.112801E+02  0.551808E+02 -0.753520E+01
 endloop
endfacet
facet normal -0.306551E+00  0.893748E+00 -0.327476E+00
 outer loop
  vertex -0.112800E+02  0.551808E+02 -0.753520E+01
  vertex -0.168072E+02  0.528995E+02 -0.858730E+01
  vertex -0.196993E+02  0.528995E+02 -0.588000E+01
 endloop
endfacet
facet normal -0.329073E+00  0.909923E+00 -0.252489E+00
 outer loop
  vertex -0.134138E+02  0.551808E+02 -0.515960E+01
  vertex -0.100656E+02  0.564356E+02 -0.500130E+01
  vertex -0.829880E+01  0.564356E+02 -0.730400E+01
 endloop
endfacet
facet normal -0.347824E+00  0.883985E+00 -0.312393E+00
 outer loop
  vertex -0.829880E+01  0.564356E+02 -0.730390E+01
  vertex -0.112801E+02  0.551808E+02 -0.753520E+01
  vertex -0.134138E+02  0.551808E+02 -0.515950E+01
 endloop
endfacet
facet normal -0.807048E+00  0.602474E-01 -0.587404E+00
 outer loop
  vertex -0.100656E+02  0.564356E+02 -0.500130E+01
  vertex -0.975080E+01  0.573210E+02 -0.534300E+01
  vertex -0.796030E+01  0.573211E+02 -0.780300E+01
 endloop
endfacet
facet normal -0.792766E+00 -0.395536E-01 -0.608242E+00
 outer loop
  vertex -0.796020E+01  0.573210E+02 -0.780290E+01
  vertex -0.829880E+01  0.564356E+02 -0.730400E+01
  vertex -0.100656E+02  0.564356E+02 -0.500120E+01
 endloop
endfacet
facet normal -0.500422E+00 -0.785187E+00 -0.364772E+00
 outer loop
  vertex -0.975080E+01  0.573210E+02 -0.534300E+01
  vertex -0.104590E+02  0.579599E+02 -0.574670E+01
  vertex -0.853040E+01  0.579599E+02 -0.839250E+01
 endloop
endfacet
facet normal -0.501440E+00 -0.784423E+00 -0.365019E+00
 outer loop
  vertex -0.853040E+01  0.579598E+02 -0.839240E+01
  vertex -0.796030E+01  0.573211E+02 -0.780300E+01
  vertex -0.975080E+01  0.573209E+02 -0.534290E+01
 endloop
endfacet
facet normal -0.655731E+00 -0.583525E+00 -0.479078E+00
 outer loop
  vertex -0.104590E+02  0.579599E+02 -0.574670E+01
  vertex -0.107686E+02  0.584363E+02 -0.590320E+01
  vertex -0.878290E+01  0.584363E+02 -0.862110E+01
 endloop
endfacet
facet normal -0.658628E+00 -0.579430E+00 -0.480072E+00
 outer loop
  vertex -0.878280E+01  0.584362E+02 -0.862110E+01
  vertex -0.853040E+01  0.579599E+02 -0.839250E+01
  vertex -0.104589E+02  0.579598E+02 -0.574660E+01
 endloop
endfacet
facet normal -0.616478E+00  0.646413E+00 -0.449561E+00
 outer loop
  vertex -0.107686E+02  0.584363E+02 -0.590320E+01
  vertex -0.105209E+02  0.587596E+02 -0.577800E+01
  vertex -0.858090E+01  0.587596E+02 -0.843830E+01
 endloop
endfacet
facet normal -0.618878E+00  0.642315E+00 -0.452130E+00
 outer loop
  vertex -0.858090E+01  0.587596E+02 -0.843830E+01
  vertex -0.878290E+01  0.584363E+02 -0.862110E+01
  vertex -0.107686E+02  0.584362E+02 -0.590320E+01
 endloop
endfacet
facet normal -0.166281E+00  0.978689E+00 -0.120488E+00
 outer loop
  vertex -0.105209E+02  0.587596E+02 -0.577800E+01
  vertex -0.973730E+01  0.589415E+02 -0.538190E+01
  vertex -0.794180E+01  0.589415E+02 -0.785980E+01
 endloop
endfacet
facet normal -0.167708E+00  0.978222E+00 -0.122289E+00
 outer loop
  vertex -0.794180E+01  0.589415E+02 -0.785970E+01
  vertex -0.858090E+01  0.587596E+02 -0.843830E+01
  vertex -0.105208E+02  0.587596E+02 -0.577790E+01
 endloop
endfacet
facet normal -0.131435E+00  0.986832E+00 -0.942712E-01
 outer loop
  vertex -0.973730E+01  0.589415E+02 -0.538190E+01
  vertex -0.868980E+01  0.591316E+02 -0.485240E+01
  vertex -0.708740E+01  0.591316E+02 -0.708650E+01
 endloop
endfacet
facet normal -0.132486E+00  0.986526E+00 -0.959906E-01
 outer loop
  vertex -0.708730E+01  0.591315E+02 -0.708650E+01
  vertex -0.794180E+01  0.589415E+02 -0.785980E+01
  vertex -0.973720E+01  0.589415E+02 -0.538180E+01
 endloop
endfacet
facet normal -0.333710E+00  0.912442E+00 -0.236826E+00
 outer loop
  vertex -0.868980E+01  0.591316E+02 -0.485240E+01
  vertex -0.781180E+01  0.595679E+02 -0.440860E+01
  vertex -0.637130E+01  0.595679E+02 -0.643840E+01
 endloop
endfacet
facet normal -0.336332E+00  0.910336E+00 -0.241182E+00
 outer loop
  vertex -0.637130E+01  0.595679E+02 -0.643830E+01
  vertex -0.708740E+01  0.591316E+02 -0.708650E+01
  vertex -0.868980E+01  0.591315E+02 -0.485230E+01
 endloop
endfacet
facet normal -0.706976E+00  0.501452E+00 -0.498730E+00
 outer loop
  vertex -0.781180E+01  0.595679E+02 -0.440860E+01
  vertex -0.739030E+01  0.603740E+02 -0.419560E+01
  vertex -0.602760E+01  0.603740E+02 -0.612730E+01
 endloop
endfacet
facet normal -0.708128E+00  0.496015E+00 -0.502517E+00
 outer loop
  vertex -0.602750E+01  0.603740E+02 -0.612720E+01
  vertex -0.637130E+01  0.595679E+02 -0.643840E+01
  vertex -0.781180E+01  0.595679E+02 -0.440850E+01
 endloop
endfacet
facet normal -0.811535E+00  0.121150E+00 -0.571606E+00
 outer loop
  vertex -0.739030E+01  0.603740E+02 -0.419560E+01
  vertex -0.728400E+01  0.613399E+02 -0.414180E+01
  vertex -0.594080E+01  0.613399E+02 -0.604880E+01
 endloop
endfacet
facet normal -0.811304E+00  0.119477E+00 -0.572285E+00
 outer loop
  vertex -0.594080E+01  0.613399E+02 -0.604870E+01
  vertex -0.602760E+01  0.603740E+02 -0.612730E+01
  vertex -0.739020E+01  0.603740E+02 -0.419560E+01
 endloop
endfacet
facet normal -0.813216E+00  0.102985E+00 -0.572777E+00
 outer loop
  vertex -0.728400E+01  0.613399E+02 -0.414180E+01
  vertex -0.720600E+01  0.622011E+02 -0.409770E+01
  vertex -0.587720E+01  0.622011E+02 -0.598430E+01
 endloop
endfacet
facet normal -0.813246E+00  0.102966E+00 -0.572739E+00
 outer loop
  vertex -0.587720E+01  0.622010E+02 -0.598430E+01
  vertex -0.594080E+01  0.613399E+02 -0.604880E+01
  vertex -0.728390E+01  0.613399E+02 -0.414170E+01
 endloop
endfacet
facet normal -0.253059E+00  0.950882E+00 -0.178286E+00
 outer loop
  vertex -0.720600E+01  0.622011E+02 -0.409770E+01
  vertex -0.563870E+01  0.627853E+02 -0.320650E+01
  vertex -0.459900E+01  0.627852E+02 -0.468280E+01
 endloop
endfacet
facet normal -0.253029E+00  0.950914E+00 -0.178154E+00
 outer loop
  vertex -0.459890E+01  0.627851E+02 -0.468270E+01
  vertex -0.587720E+01  0.622011E+02 -0.598430E+01
  vertex -0.720590E+01  0.622010E+02 -0.409770E+01
 endloop
endfacet
facet normal -0.271444E-01  0.999447E+00 -0.191864E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.459900E+01  0.627852E+02 -0.468280E+01
  vertex -0.563870E+01  0.627853E+02 -0.320650E+01
 endloop
endfacet
facet normal  0.160050E+00 -0.966716E+00  0.199608E+00
 outer loop
  vertex  0.000000E+00  0.800000E+01  0.000000E+00
  vertex -0.963250E+01  0.442610E+01 -0.958510E+01
  vertex -0.675880E+01  0.442610E+01 -0.118893E+02
 endloop
endfacet
facet normal -0.586292E+00  0.346903E+00 -0.732065E+00
 outer loop
  vertex -0.963250E+01  0.442610E+01 -0.958510E+01
  vertex -0.904780E+01  0.666400E+01 -0.899290E+01
  vertex -0.634850E+01  0.666400E+01 -0.111547E+02
 endloop
endfacet
facet normal -0.586555E+00  0.347679E+00 -0.731486E+00
 outer loop
  vertex -0.634840E+01  0.666400E+01 -0.111547E+02
  vertex -0.675880E+01  0.442610E+01 -0.118893E+02
  vertex -0.963240E+01  0.442600E+01 -0.958510E+01
 endloop
endfacet
facet normal -0.369993E+00  0.804961E+00 -0.463835E+00
 outer loop
  vertex -0.904780E+01  0.666400E+01 -0.899290E+01
  vertex -0.619470E+01  0.962570E+01 -0.612890E+01
  vertex -0.434760E+01  0.962570E+01 -0.760230E+01
 endloop
endfacet
facet normal -0.370569E+00  0.805358E+00 -0.462684E+00
 outer loop
  vertex -0.434750E+01  0.962560E+01 -0.760230E+01
  vertex -0.634850E+01  0.666400E+01 -0.111547E+02
  vertex -0.904780E+01  0.666400E+01 -0.899280E+01
 endloop
endfacet
facet normal -0.537864E+00  0.425573E+00 -0.727729E+00
 outer loop
  vertex -0.619470E+01  0.962570E+01 -0.612890E+01
  vertex -0.569330E+01  0.119983E+02 -0.511200E+01
  vertex -0.403060E+01  0.119983E+02 -0.634090E+01
 endloop
endfacet
facet normal -0.558016E+00  0.446484E+00 -0.699478E+00
 outer loop
  vertex -0.403060E+01  0.119982E+02 -0.634080E+01
  vertex -0.434760E+01  0.962570E+01 -0.760230E+01
  vertex -0.619460E+01  0.962560E+01 -0.612890E+01
 endloop
endfacet
facet normal -0.476615E+00 -0.353395E+00 -0.804953E+00
 outer loop
  vertex -0.569330E+01  0.119983E+02 -0.511200E+01
  vertex -0.831470E+01  0.168341E+02 -0.568290E+01
  vertex -0.600750E+01  0.168341E+02 -0.704900E+01
 endloop
endfacet
facet normal -0.559147E+00 -0.339332E+00 -0.756445E+00
 outer loop
  vertex -0.600750E+01  0.168341E+02 -0.704890E+01
  vertex -0.403060E+01  0.119983E+02 -0.634090E+01
  vertex -0.569320E+01  0.119982E+02 -0.511190E+01
 endloop
endfacet
facet normal -0.393214E+00 -0.370236E+00 -0.841610E+00
 outer loop
  vertex -0.831470E+01  0.168341E+02 -0.568290E+01
  vertex -0.140445E+02  0.265168E+02 -0.726540E+01
  vertex -0.103064E+02  0.265168E+02 -0.901190E+01
 endloop
endfacet
facet normal -0.472971E+00 -0.371906E+00 -0.798739E+00
 outer loop
  vertex -0.103064E+02  0.265167E+02 -0.901180E+01
  vertex -0.600750E+01  0.168341E+02 -0.704900E+01
  vertex -0.831470E+01  0.168341E+02 -0.568280E+01
 endloop
endfacet
facet normal -0.365893E+00 -0.294656E+00 -0.882780E+00
 outer loop
  vertex -0.140445E+02  0.265168E+02 -0.726540E+01
  vertex -0.196739E+02  0.383280E+02 -0.887450E+01
  vertex -0.145267E+02  0.383280E+02 -0.110079E+02
 endloop
endfacet
facet normal -0.404966E+00 -0.291173E+00 -0.866730E+00
 outer loop
  vertex -0.145267E+02  0.383279E+02 -0.110079E+02
  vertex -0.103064E+02  0.265168E+02 -0.901190E+01
  vertex -0.140445E+02  0.265167E+02 -0.726530E+01
 endloop
endfacet
facet normal -0.379622E+00 -0.101262E+00 -0.919583E+00
 outer loop
  vertex -0.196739E+02  0.383280E+02 -0.887450E+01
  vertex -0.209370E+02  0.478155E+02 -0.939780E+01
  vertex -0.154644E+02  0.478155E+02 -0.116570E+02
 endloop
endfacet
facet normal -0.380951E+00 -0.100525E+00 -0.919114E+00
 outer loop
  vertex -0.154644E+02  0.478154E+02 -0.116569E+02
  vertex -0.145267E+02  0.383280E+02 -0.110079E+02
  vertex -0.196739E+02  0.383279E+02 -0.887450E+01
 endloop
endfacet
facet normal -0.377754E+00  0.436990E+00 -0.816298E+00
 outer loop
  vertex -0.209370E+02  0.478155E+02 -0.939780E+01
  vertex -0.168072E+02  0.528995E+02 -0.858730E+01
  vertex -0.123464E+02  0.528995E+02 -0.106516E+02
 endloop
endfacet
facet normal -0.352215E+00  0.384751E+00 -0.853177E+00
 outer loop
  vertex -0.123464E+02  0.528995E+02 -0.106515E+02
  vertex -0.154644E+02  0.478155E+02 -0.116570E+02
  vertex -0.209370E+02  0.478154E+02 -0.939780E+01
 endloop
endfacet
facet normal -0.264573E+00  0.850582E+00 -0.454436E+00
 outer loop
  vertex -0.168072E+02  0.528995E+02 -0.858730E+01
  vertex -0.112801E+02  0.551808E+02 -0.753520E+01
  vertex -0.816880E+01  0.551808E+02 -0.934660E+01
 endloop
endfacet
facet normal -0.257525E+00  0.789944E+00 -0.556480E+00
 outer loop
  vertex -0.816880E+01  0.551808E+02 -0.934650E+01
  vertex -0.123464E+02  0.528995E+02 -0.106516E+02
  vertex -0.168071E+02  0.528995E+02 -0.858730E+01
 endloop
endfacet
facet normal -0.319560E+00  0.840032E+00 -0.438437E+00
 outer loop
  vertex -0.112801E+02  0.551808E+02 -0.753520E+01
  vertex -0.829880E+01  0.564356E+02 -0.730400E+01
  vertex -0.588970E+01  0.564356E+02 -0.905990E+01
 endloop
endfacet
facet normal -0.336547E+00  0.743373E+00 -0.578042E+00
 outer loop
  vertex -0.588960E+01  0.564356E+02 -0.905990E+01
  vertex -0.816880E+01  0.551808E+02 -0.934660E+01
  vertex -0.112800E+02  0.551808E+02 -0.753520E+01
 endloop
endfacet
facet normal -0.608118E+00 -0.200398E+00 -0.768136E+00
 outer loop
  vertex -0.829880E+01  0.564356E+02 -0.730400E+01
  vertex -0.796030E+01  0.573211E+02 -0.780300E+01
  vertex -0.559100E+01  0.573210E+02 -0.967870E+01
 endloop
endfacet
facet normal -0.553129E+00 -0.343791E+00 -0.758852E+00
 outer loop
  vertex -0.559100E+01  0.573209E+02 -0.967870E+01
  vertex -0.588970E+01  0.564356E+02 -0.905990E+01
  vertex -0.829880E+01  0.564356E+02 -0.730390E+01
 endloop
endfacet
facet normal -0.382911E+00 -0.787456E+00 -0.483004E+00
 outer loop
  vertex -0.796030E+01  0.573211E+02 -0.780300E+01
  vertex -0.853040E+01  0.579599E+02 -0.839250E+01
  vertex -0.598540E+01  0.579599E+02 -0.104101E+02
 endloop
endfacet
facet normal -0.382009E+00 -0.788209E+00 -0.482490E+00
 outer loop
  vertex -0.598540E+01  0.579598E+02 -0.104100E+02
  vertex -0.559100E+01  0.573210E+02 -0.967870E+01
  vertex -0.796020E+01  0.573210E+02 -0.780290E+01
 endloop
endfacet
facet normal -0.506993E+00 -0.576288E+00 -0.640976E+00
 outer loop
  vertex -0.853040E+01  0.579599E+02 -0.839250E+01
  vertex -0.878290E+01  0.584363E+02 -0.862110E+01
  vertex -0.616270E+01  0.584363E+02 -0.106936E+02
 endloop
endfacet
facet normal -0.509532E+00 -0.572091E+00 -0.642720E+00
 outer loop
  vertex -0.616270E+01  0.584362E+02 -0.106935E+02
  vertex -0.598540E+01  0.579599E+02 -0.104101E+02
  vertex -0.853040E+01  0.579598E+02 -0.839240E+01
 endloop
endfacet
facet normal -0.477606E+00  0.639210E+00 -0.602747E+00
 outer loop
  vertex -0.878290E+01  0.584363E+02 -0.862110E+01
  vertex -0.858090E+01  0.587596E+02 -0.843830E+01
  vertex -0.602090E+01  0.587596E+02 -0.104668E+02
 endloop
endfacet
facet normal -0.479095E+00  0.635336E+00 -0.605653E+00
 outer loop
  vertex -0.602080E+01  0.587596E+02 -0.104667E+02
  vertex -0.616270E+01  0.584363E+02 -0.106936E+02
  vertex -0.878280E+01  0.584362E+02 -0.862110E+01
 endloop
endfacet
facet normal -0.130360E+00  0.977898E+00 -0.163469E+00
 outer loop
  vertex -0.858090E+01  0.587596E+02 -0.843830E+01
  vertex -0.794180E+01  0.589415E+02 -0.785980E+01
  vertex -0.557240E+01  0.589415E+02 -0.974930E+01
 endloop
endfacet
facet normal -0.131306E+00  0.977394E+00 -0.165710E+00
 outer loop
  vertex -0.557240E+01  0.589415E+02 -0.974930E+01
  vertex -0.602090E+01  0.587596E+02 -0.104668E+02
  vertex -0.858090E+01  0.587596E+02 -0.843830E+01
 endloop
endfacet
facet normal -0.103353E+00  0.986338E+00 -0.128276E+00
 outer loop
  vertex -0.794180E+01  0.589415E+02 -0.785980E+01
  vertex -0.708740E+01  0.591316E+02 -0.708650E+01
  vertex -0.497300E+01  0.591316E+02 -0.879010E+01
 endloop
endfacet
facet normal -0.103953E+00  0.986004E+00 -0.130348E+00
 outer loop
  vertex -0.497300E+01  0.591315E+02 -0.879010E+01
  vertex -0.557240E+01  0.589415E+02 -0.974930E+01
  vertex -0.794180E+01  0.589415E+02 -0.785970E+01
 endloop
endfacet
facet normal -0.262442E+00  0.909525E+00 -0.322316E+00
 outer loop
  vertex -0.708740E+01  0.591316E+02 -0.708650E+01
  vertex -0.637130E+01  0.595679E+02 -0.643840E+01
  vertex -0.447050E+01  0.595679E+02 -0.798610E+01
 endloop
endfacet
facet normal -0.263856E+00  0.907293E+00 -0.327413E+00
 outer loop
  vertex -0.447040E+01  0.595679E+02 -0.798610E+01
  vertex -0.497300E+01  0.591316E+02 -0.879010E+01
  vertex -0.708730E+01  0.591315E+02 -0.708650E+01
 endloop
endfacet
facet normal -0.550813E+00  0.494376E+00 -0.672456E+00
 outer loop
  vertex -0.637130E+01  0.595679E+02 -0.643840E+01
  vertex -0.602760E+01  0.603740E+02 -0.612730E+01
  vertex -0.422930E+01  0.603740E+02 -0.760030E+01
 endloop
endfacet
facet normal -0.550888E+00  0.488707E+00 -0.676527E+00
 outer loop
  vertex -0.422930E+01  0.603740E+02 -0.760020E+01
  vertex -0.447050E+01  0.595679E+02 -0.798610E+01
  vertex -0.637130E+01  0.595679E+02 -0.643830E+01
 endloop
endfacet
facet normal -0.629765E+00  0.118978E+00 -0.767620E+00
 outer loop
  vertex -0.602760E+01  0.603740E+02 -0.612730E+01
  vertex -0.594080E+01  0.613399E+02 -0.604880E+01
  vertex -0.416840E+01  0.613399E+02 -0.750290E+01
 endloop
endfacet
facet normal -0.629345E+00  0.117213E+00 -0.768236E+00
 outer loop
  vertex -0.416830E+01  0.613399E+02 -0.750290E+01
  vertex -0.422930E+01  0.603740E+02 -0.760030E+01
  vertex -0.602750E+01  0.603740E+02 -0.612720E+01
 endloop
endfacet
facet normal -0.630842E+00  0.104174E+00 -0.768886E+00
 outer loop
  vertex -0.594080E+01  0.613399E+02 -0.604880E+01
  vertex -0.587720E+01  0.622011E+02 -0.598430E+01
  vertex -0.412380E+01  0.622011E+02 -0.742290E+01
 endloop
endfacet
facet normal -0.630845E+00  0.104180E+00 -0.768883E+00
 outer loop
  vertex -0.412370E+01  0.622010E+02 -0.742290E+01
  vertex -0.416840E+01  0.613399E+02 -0.750290E+01
  vertex -0.594080E+01  0.613399E+02 -0.604870E+01
 endloop
endfacet
facet normal -0.194159E+00  0.952017E+00 -0.236571E+00
 outer loop
  vertex -0.587720E+01  0.622011E+02 -0.598430E+01
  vertex -0.459900E+01  0.627852E+02 -0.468280E+01
  vertex -0.322690E+01  0.627853E+02 -0.580850E+01
 endloop
endfacet
facet normal -0.194181E+00  0.952004E+00 -0.236607E+00
 outer loop
  vertex -0.322690E+01  0.627853E+02 -0.580840E+01
  vertex -0.412380E+01  0.622011E+02 -0.742290E+01
  vertex -0.587720E+01  0.622010E+02 -0.598430E+01
 endloop
endfacet
facet normal -0.209230E-01  0.999460E+00 -0.253192E-01
 outer loop
  vertex  0.000000E+00  0.630000E+02  0.000000E+00
  vertex -0.322690E+01  0.627853E+02 -0.580850E+01
  vertex -0.459890E+01  0.627851E+02 -0.468270E+01
 endloop
endfacet
facet normal  0.000000E+00 -0.100000E+01  0.000000E+00
 outer loop
  vertex  0.695780E+01  0.602000E+02 -0.446230E+01
  vertex  0.830570E+01  0.602000E+02  0.000000E+00
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal  0.371590E-02 -0.999992E+00 -0.112239E-02
 outer loop
  vertex  0.767940E+01  0.602032E+02 -0.492500E+01
  vertex  0.916700E+01  0.602032E+02  0.000000E+00
  vertex  0.830570E+01  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal  0.371605E-02 -0.999992E+00 -0.112249E-02
 outer loop
  vertex  0.830570E+01  0.602000E+02  0.000000E+00
  vertex  0.695780E+01  0.602000E+02 -0.446230E+01
  vertex  0.767930E+01  0.602032E+02 -0.492500E+01
 endloop
endfacet
facet normal  0.950160E+00 -0.121853E+00 -0.286964E+00
 outer loop
  vertex  0.779890E+01  0.613167E+02 -0.500270E+01
  vertex  0.930980E+01  0.613167E+02  0.000000E+00
  vertex  0.916700E+01  0.602032E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950141E+00 -0.121979E+00 -0.286972E+00
 outer loop
  vertex  0.916690E+01  0.602032E+02  0.000000E+00
  vertex  0.767940E+01  0.602032E+02 -0.492500E+01
  vertex  0.779890E+01  0.613166E+02 -0.500260E+01
 endloop
endfacet
facet normal  0.950245E+00 -0.121821E+00 -0.286696E+00
 outer loop
  vertex  0.843880E+01  0.672746E+02 -0.541850E+01
  vertex  0.100736E+02  0.672746E+02  0.000000E+00
  vertex  0.930980E+01  0.613167E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950135E+00 -0.122056E+00 -0.286959E+00
 outer loop
  vertex  0.930980E+01  0.613166E+02  0.000000E+00
  vertex  0.779890E+01  0.613167E+02 -0.500270E+01
  vertex  0.843870E+01  0.672745E+02 -0.541840E+01
 endloop
endfacet
facet normal  0.950355E+00 -0.121841E+00 -0.286321E+00
 outer loop
  vertex  0.954030E+01  0.775300E+02 -0.613420E+01
  vertex  0.113884E+02  0.775300E+02  0.000000E+00
  vertex  0.100736E+02  0.672746E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950220E+00 -0.122068E+00 -0.286673E+00
 outer loop
  vertex  0.100735E+02  0.672745E+02  0.000000E+00
  vertex  0.843880E+01  0.672746E+02 -0.541850E+01
  vertex  0.954030E+01  0.775299E+02 -0.613420E+01
 endloop
endfacet
facet normal  0.950416E+00 -0.121845E+00 -0.286119E+00
 outer loop
  vertex  0.102924E+02  0.845330E+02 -0.662290E+01
  vertex  0.122862E+02  0.845330E+02  0.000000E+00
  vertex  0.113884E+02  0.775300E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950331E+00 -0.122045E+00 -0.286316E+00
 outer loop
  vertex  0.113884E+02  0.775299E+02  0.000000E+00
  vertex  0.954030E+01  0.775300E+02 -0.613420E+01
  vertex  0.102924E+02  0.845329E+02 -0.662290E+01
 endloop
endfacet
facet normal  0.950424E+00 -0.121866E+00 -0.286083E+00
 outer loop
  vertex  0.104686E+02  0.861739E+02 -0.673740E+01
  vertex  0.124966E+02  0.861739E+02  0.000000E+00
  vertex  0.122862E+02  0.845330E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950398E+00 -0.122025E+00 -0.286101E+00
 outer loop
  vertex  0.122861E+02  0.845329E+02  0.000000E+00
  vertex  0.102924E+02  0.845330E+02 -0.662290E+01
  vertex  0.104686E+02  0.861738E+02 -0.673740E+01
 endloop
endfacet
facet normal  0.626100E+00  0.756624E+00 -0.188467E+00
 outer loop
  vertex  0.103875E+02  0.862540E+02 -0.668500E+01
  vertex  0.123998E+02  0.862540E+02  0.000000E+00
  vertex  0.124966E+02  0.861739E+02  0.000000E+00
 endloop
endfacet
facet normal  0.624907E+00  0.757703E+00 -0.188090E+00
 outer loop
  vertex  0.124966E+02  0.861738E+02  0.000000E+00
  vertex  0.104686E+02  0.861739E+02 -0.673740E+01
  vertex  0.103874E+02  0.862539E+02 -0.668490E+01
 endloop
endfacet
facet normal  0.470378E+00  0.871021E+00 -0.141662E+00
 outer loop
  vertex  0.916020E+01  0.870452E+02 -0.589210E+01
  vertex  0.109347E+02  0.870452E+02  0.000000E+00
  vertex  0.123998E+02  0.862540E+02  0.000000E+00
 endloop
endfacet
facet normal  0.470123E+00  0.871184E+00 -0.141502E+00
 outer loop
  vertex  0.123998E+02  0.862539E+02  0.000000E+00
  vertex  0.103875E+02  0.862540E+02 -0.668500E+01
  vertex  0.916020E+01  0.870451E+02 -0.589200E+01
 endloop
endfacet
facet normal  0.430518E+00  0.893176E+00 -0.129961E+00
 outer loop
  vertex  0.542840E+01  0.891924E+02 -0.348360E+01
  vertex  0.648000E+01  0.891924E+02  0.000000E+00
  vertex  0.109347E+02  0.870452E+02  0.000000E+00
 endloop
endfacet
facet normal  0.430335E+00  0.893319E+00 -0.129587E+00
 outer loop
  vertex  0.109347E+02  0.870451E+02  0.000000E+00
  vertex  0.916020E+01  0.870452E+02 -0.589210E+01
  vertex  0.542840E+01  0.891923E+02 -0.348350E+01
 endloop
endfacet
facet normal  0.153482E+00  0.987066E+00 -0.463039E-01
 outer loop
  vertex  0.648000E+01  0.891923E+02  0.000000E+00
  vertex  0.542840E+01  0.891924E+02 -0.348360E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.119708E-04 -0.100000E+01  0.186654E-04
 outer loop
  vertex  0.345390E+01  0.601999E+02 -0.752880E+01
  vertex  0.695780E+01  0.602000E+02 -0.446230E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal  0.255981E-02 -0.999992E+00 -0.292489E-02
 outer loop
  vertex  0.381210E+01  0.602032E+02 -0.830960E+01
  vertex  0.767940E+01  0.602032E+02 -0.492500E+01
  vertex  0.695780E+01  0.602000E+02 -0.446230E+01
 endloop
endfacet
facet normal  0.265973E-02 -0.999992E+00 -0.300658E-02
 outer loop
  vertex  0.695770E+01  0.602000E+02 -0.446220E+01
  vertex  0.345390E+01  0.601999E+02 -0.752880E+01
  vertex  0.381200E+01  0.602032E+02 -0.830950E+01
 endloop
endfacet
facet normal  0.653728E+00 -0.122268E+00 -0.746786E+00
 outer loop
  vertex  0.387150E+01  0.613167E+02 -0.844070E+01
  vertex  0.779890E+01  0.613167E+02 -0.500270E+01
  vertex  0.767940E+01  0.602032E+02 -0.492500E+01
 endloop
endfacet
facet normal  0.653613E+00 -0.122739E+00 -0.746810E+00
 outer loop
  vertex  0.767930E+01  0.602032E+02 -0.492500E+01
  vertex  0.381210E+01  0.602032E+02 -0.830960E+01
  vertex  0.387150E+01  0.613166E+02 -0.844060E+01
 endloop
endfacet
facet normal  0.654076E+00 -0.122346E+00 -0.746469E+00
 outer loop
  vertex  0.418910E+01  0.672746E+02 -0.914220E+01
  vertex  0.843880E+01  0.672746E+02 -0.541850E+01
  vertex  0.779890E+01  0.613167E+02 -0.500270E+01
 endloop
endfacet
facet normal  0.653697E+00 -0.122761E+00 -0.746733E+00
 outer loop
  vertex  0.779890E+01  0.613166E+02 -0.500260E+01
  vertex  0.387150E+01  0.613167E+02 -0.844070E+01
  vertex  0.418900E+01  0.672745E+02 -0.914220E+01
 endloop
endfacet
facet normal  0.654580E+00 -0.122370E+00 -0.746024E+00
 outer loop
  vertex  0.473590E+01  0.775300E+02 -0.103497E+02
  vertex  0.954030E+01  0.775300E+02 -0.613420E+01
  vertex  0.843880E+01  0.672746E+02 -0.541850E+01
 endloop
endfacet
facet normal  0.654061E+00 -0.122746E+00 -0.746417E+00
 outer loop
  vertex  0.843870E+01  0.672745E+02 -0.541840E+01
  vertex  0.418910E+01  0.672746E+02 -0.914220E+01
  vertex  0.473580E+01  0.775299E+02 -0.103496E+02
 endloop
endfacet
facet normal  0.654858E+00 -0.122373E+00 -0.745778E+00
 outer loop
  vertex  0.510920E+01  0.845330E+02 -0.111742E+02
  vertex  0.102924E+02  0.845330E+02 -0.662290E+01
  vertex  0.954030E+01  0.775300E+02 -0.613420E+01
 endloop
endfacet
facet normal  0.654549E+00 -0.122723E+00 -0.745992E+00
 outer loop
  vertex  0.954030E+01  0.775299E+02 -0.613420E+01
  vertex  0.473590E+01  0.775300E+02 -0.103497E+02
  vertex  0.510920E+01  0.845329E+02 -0.111742E+02
 endloop
endfacet
facet normal  0.654924E+00 -0.122361E+00 -0.745722E+00
 outer loop
  vertex  0.519670E+01  0.861739E+02 -0.113674E+02
  vertex  0.104686E+02  0.861739E+02 -0.673740E+01
  vertex  0.102924E+02  0.845330E+02 -0.662290E+01
 endloop
endfacet
facet normal  0.654828E+00 -0.122730E+00 -0.745746E+00
 outer loop
  vertex  0.102924E+02  0.845329E+02 -0.662290E+01
  vertex  0.510920E+01  0.845330E+02 -0.111742E+02
  vertex  0.519670E+01  0.861738E+02 -0.113674E+02
 endloop
endfacet
facet normal  0.430932E+00  0.757309E+00 -0.490694E+00
 outer loop
  vertex  0.515640E+01  0.862540E+02 -0.112790E+02
  vertex  0.103875E+02  0.862540E+02 -0.668500E+01
  vertex  0.104686E+02  0.861739E+02 -0.673740E+01
 endloop
endfacet
facet normal  0.430309E+00  0.758144E+00 -0.489950E+00
 outer loop
  vertex  0.104686E+02  0.861738E+02 -0.673740E+01
  vertex  0.519670E+01  0.861739E+02 -0.113674E+02
  vertex  0.515640E+01  0.862539E+02 -0.112790E+02
 endloop
endfacet
facet normal  0.323598E+00  0.871419E+00 -0.368664E+00
 outer loop
  vertex  0.454720E+01  0.870452E+02 -0.994120E+01
  vertex  0.916020E+01  0.870452E+02 -0.589210E+01
  vertex  0.103875E+02  0.862540E+02 -0.668500E+01
 endloop
endfacet
facet normal  0.323391E+00  0.871690E+00 -0.368205E+00
 outer loop
  vertex  0.103874E+02  0.862539E+02 -0.668490E+01
  vertex  0.515640E+01  0.862540E+02 -0.112790E+02
  vertex  0.454720E+01  0.870451E+02 -0.994120E+01
 endloop
endfacet
facet normal  0.295950E+00  0.893425E+00 -0.337944E+00
 outer loop
  vertex  0.269470E+01  0.891924E+02 -0.587760E+01
  vertex  0.542840E+01  0.891924E+02 -0.348360E+01
  vertex  0.916020E+01  0.870452E+02 -0.589210E+01
 endloop
endfacet
facet normal  0.296036E+00  0.893664E+00 -0.337234E+00
 outer loop
  vertex  0.916020E+01  0.870451E+02 -0.589200E+01
  vertex  0.454720E+01  0.870452E+02 -0.994120E+01
  vertex  0.269470E+01  0.891923E+02 -0.587760E+01
 endloop
endfacet
facet normal  0.105749E+00  0.987039E+00 -0.120709E+00
 outer loop
  vertex  0.542840E+01  0.891923E+02 -0.348350E+01
  vertex  0.269470E+01  0.891924E+02 -0.587760E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal -0.218174E-04 -0.100000E+01  0.316480E-05
 outer loop
  vertex -0.118500E+01  0.602000E+02 -0.816910E+01
  vertex  0.345390E+01  0.601999E+02 -0.752880E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal  0.548499E-03 -0.999992E+00 -0.397440E-02
 outer loop
  vertex -0.130790E+01  0.602032E+02 -0.901620E+01
  vertex  0.381210E+01  0.602032E+02 -0.830960E+01
  vertex  0.345390E+01  0.601999E+02 -0.752880E+01
 endloop
endfacet
facet normal  0.510329E-03 -0.999992E+00 -0.385217E-02
 outer loop
  vertex  0.345390E+01  0.601999E+02 -0.752880E+01
  vertex -0.118500E+01  0.602000E+02 -0.816910E+01
  vertex -0.130780E+01  0.602032E+02 -0.901620E+01
 endloop
endfacet
facet normal  0.135711E+00 -0.122985E+00 -0.983086E+00
 outer loop
  vertex -0.132820E+01  0.613167E+02 -0.915850E+01
  vertex  0.387150E+01  0.613167E+02 -0.844070E+01
  vertex  0.381210E+01  0.602032E+02 -0.830960E+01
 endloop
endfacet
facet normal  0.135694E+00 -0.123093E+00 -0.983074E+00
 outer loop
  vertex  0.381200E+01  0.602032E+02 -0.830950E+01
  vertex -0.130790E+01  0.602032E+02 -0.901620E+01
  vertex -0.132810E+01  0.613166E+02 -0.915840E+01
 endloop
endfacet
facet normal  0.135833E+00 -0.122990E+00 -0.983068E+00
 outer loop
  vertex -0.143720E+01  0.672746E+02 -0.991960E+01
  vertex  0.418910E+01  0.672746E+02 -0.914220E+01
  vertex  0.387150E+01  0.613167E+02 -0.844070E+01
 endloop
endfacet
facet normal  0.135726E+00 -0.123089E+00 -0.983071E+00
 outer loop
  vertex  0.387150E+01  0.613166E+02 -0.844060E+01
  vertex -0.132820E+01  0.613167E+02 -0.915850E+01
  vertex -0.143710E+01  0.672745E+02 -0.991950E+01
 endloop
endfacet
facet normal  0.136019E+00 -0.122998E+00 -0.983041E+00
 outer loop
  vertex -0.162480E+01  0.775300E+02 -0.112298E+02
  vertex  0.473590E+01  0.775300E+02 -0.103497E+02
  vertex  0.418910E+01  0.672746E+02 -0.914220E+01
 endloop
endfacet
facet normal  0.135831E+00 -0.123110E+00 -0.983053E+00
 outer loop
  vertex  0.418900E+01  0.672745E+02 -0.914220E+01
  vertex -0.143720E+01  0.672746E+02 -0.991960E+01
  vertex -0.162470E+01  0.775299E+02 -0.112298E+02
 endloop
endfacet
facet normal  0.136135E+00 -0.122994E+00 -0.983026E+00
 outer loop
  vertex -0.175290E+01  0.845330E+02 -0.121245E+02
  vertex  0.510920E+01  0.845330E+02 -0.111742E+02
  vertex  0.473590E+01  0.775300E+02 -0.103497E+02
 endloop
endfacet
facet normal  0.136032E+00 -0.123104E+00 -0.983026E+00
 outer loop
  vertex  0.473580E+01  0.775299E+02 -0.103496E+02
  vertex -0.162480E+01  0.775300E+02 -0.112298E+02
  vertex -0.175290E+01  0.845329E+02 -0.121245E+02
 endloop
endfacet
facet normal  0.136152E+00 -0.123002E+00 -0.983022E+00
 outer loop
  vertex -0.178290E+01  0.861739E+02 -0.123341E+02
  vertex  0.519670E+01  0.861739E+02 -0.113674E+02
  vertex  0.510920E+01  0.845330E+02 -0.111742E+02
 endloop
endfacet
facet normal  0.136132E+00 -0.123033E+00 -0.983021E+00
 outer loop
  vertex  0.510920E+01  0.845329E+02 -0.111742E+02
  vertex -0.175290E+01  0.845330E+02 -0.121245E+02
  vertex -0.178280E+01  0.861738E+02 -0.123340E+02
 endloop
endfacet
facet normal  0.894816E-01  0.758020E+00 -0.646065E+00
 outer loop
  vertex -0.176910E+01  0.862540E+02 -0.122382E+02
  vertex  0.515640E+01  0.862540E+02 -0.112790E+02
  vertex  0.519670E+01  0.861739E+02 -0.113674E+02
 endloop
endfacet
facet normal  0.894333E-01  0.758393E+00 -0.645633E+00
 outer loop
  vertex  0.519670E+01  0.861738E+02 -0.113674E+02
  vertex -0.178290E+01  0.861739E+02 -0.123341E+02
  vertex -0.176900E+01  0.862539E+02 -0.122382E+02
 endloop
endfacet
facet normal  0.671463E-01  0.871891E+00 -0.485075E+00
 outer loop
  vertex -0.156010E+01  0.870452E+02 -0.107866E+02
  vertex  0.454720E+01  0.870452E+02 -0.994120E+01
  vertex  0.515640E+01  0.862540E+02 -0.112790E+02
 endloop
endfacet
facet normal  0.671719E-01  0.871988E+00 -0.484896E+00
 outer loop
  vertex  0.515640E+01  0.862539E+02 -0.112790E+02
  vertex -0.176910E+01  0.862540E+02 -0.122382E+02
  vertex -0.156000E+01  0.870451E+02 -0.107866E+02
 endloop
endfacet
facet normal  0.613562E-01  0.893775E+00 -0.444299E+00
 outer loop
  vertex -0.924500E+00  0.891924E+02 -0.637740E+01
  vertex  0.269470E+01  0.891924E+02 -0.587760E+01
  vertex  0.454720E+01  0.870452E+02 -0.994120E+01
 endloop
endfacet
facet normal  0.614923E-01  0.893852E+00 -0.444125E+00
 outer loop
  vertex  0.454720E+01  0.870451E+02 -0.994120E+01
  vertex -0.156010E+01  0.870452E+02 -0.107866E+02
  vertex -0.924400E+00  0.891923E+02 -0.637730E+01
 endloop
endfacet
facet normal  0.220007E-01  0.987014E+00 -0.159118E+00
 outer loop
  vertex  0.269470E+01  0.891923E+02 -0.587760E+01
  vertex -0.924500E+00  0.891924E+02 -0.637740E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.000000E+00 -0.100000E+01  0.000000E+00
 outer loop
  vertex -0.542460E+01  0.602000E+02 -0.625690E+01
  vertex -0.118500E+01  0.602000E+02 -0.816910E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal -0.159937E-02 -0.999992E+00 -0.354615E-02
 outer loop
  vertex -0.598710E+01  0.602032E+02 -0.690580E+01
  vertex -0.130790E+01  0.602032E+02 -0.901620E+01
  vertex -0.118500E+01  0.602000E+02 -0.816910E+01
 endloop
endfacet
facet normal -0.159939E-02 -0.999992E+00 -0.354632E-02
 outer loop
  vertex -0.118490E+01  0.602000E+02 -0.816900E+01
  vertex -0.542460E+01  0.602000E+02 -0.625690E+01
  vertex -0.598710E+01  0.602032E+02 -0.690570E+01
 endloop
endfacet
facet normal -0.408087E+00 -0.123045E+00 -0.904613E+00
 outer loop
  vertex -0.608040E+01  0.613167E+02 -0.701470E+01
  vertex -0.132820E+01  0.613167E+02 -0.915850E+01
  vertex -0.130790E+01  0.602032E+02 -0.901620E+01
 endloop
endfacet
facet normal -0.408029E+00 -0.122562E+00 -0.904705E+00
 outer loop
  vertex -0.130780E+01  0.602032E+02 -0.901620E+01
  vertex -0.598710E+01  0.602032E+02 -0.690580E+01
  vertex -0.608030E+01  0.613166E+02 -0.701460E+01
 endloop
endfacet
facet normal -0.408418E+00 -0.123015E+00 -0.904468E+00
 outer loop
  vertex -0.657920E+01  0.672746E+02 -0.759770E+01
  vertex -0.143720E+01  0.672746E+02 -0.991960E+01
  vertex -0.132820E+01  0.613167E+02 -0.915850E+01
 endloop
endfacet
facet normal -0.408084E+00 -0.122685E+00 -0.904663E+00
 outer loop
  vertex -0.132810E+01  0.613166E+02 -0.915840E+01
  vertex -0.608040E+01  0.613167E+02 -0.701470E+01
  vertex -0.657910E+01  0.672745E+02 -0.759770E+01
 endloop
endfacet
facet normal -0.408885E+00 -0.123005E+00 -0.904258E+00
 outer loop
  vertex -0.743800E+01  0.775300E+02 -0.860120E+01
  vertex -0.162480E+01  0.775300E+02 -0.112298E+02
  vertex -0.143720E+01  0.672746E+02 -0.991960E+01
 endloop
endfacet
facet normal -0.408414E+00 -0.122710E+00 -0.904511E+00
 outer loop
  vertex -0.143710E+01  0.672745E+02 -0.991950E+01
  vertex -0.657920E+01  0.672746E+02 -0.759770E+01
  vertex -0.743800E+01  0.775299E+02 -0.860120E+01
 endloop
endfacet
facet normal -0.409151E+00 -0.122997E+00 -0.904139E+00
 outer loop
  vertex -0.802430E+01  0.845330E+02 -0.928650E+01
  vertex -0.175290E+01  0.845330E+02 -0.121245E+02
  vertex -0.162480E+01  0.775300E+02 -0.112298E+02
 endloop
endfacet
facet normal -0.408896E+00 -0.122709E+00 -0.904293E+00
 outer loop
  vertex -0.162470E+01  0.775299E+02 -0.112298E+02
  vertex -0.743800E+01  0.775300E+02 -0.860120E+01
  vertex -0.802420E+01  0.845329E+02 -0.928640E+01
 endloop
endfacet
facet normal -0.409199E+00 -0.122969E+00 -0.904121E+00
 outer loop
  vertex -0.816170E+01  0.861739E+02 -0.944710E+01
  vertex -0.178290E+01  0.861739E+02 -0.123341E+02
  vertex -0.175290E+01  0.845330E+02 -0.121245E+02
 endloop
endfacet
facet normal -0.409167E+00 -0.122708E+00 -0.904171E+00
 outer loop
  vertex -0.175290E+01  0.845329E+02 -0.121245E+02
  vertex -0.802430E+01  0.845330E+02 -0.928650E+01
  vertex -0.816170E+01  0.861738E+02 -0.944700E+01
 endloop
endfacet
facet normal -0.268988E+00  0.757899E+00 -0.594335E+00
 outer loop
  vertex -0.809850E+01  0.862540E+02 -0.937360E+01
  vertex -0.176910E+01  0.862540E+02 -0.122382E+02
  vertex -0.178290E+01  0.861739E+02 -0.123341E+02
 endloop
endfacet
facet normal -0.268844E+00  0.758163E+00 -0.594064E+00
 outer loop
  vertex -0.178280E+01  0.861738E+02 -0.123340E+02
  vertex -0.816170E+01  0.861739E+02 -0.944710E+01
  vertex -0.809850E+01  0.862539E+02 -0.937360E+01
 endloop
endfacet
facet normal -0.201826E+00  0.871894E+00 -0.446170E+00
 outer loop
  vertex -0.714160E+01  0.870452E+02 -0.826180E+01
  vertex -0.156010E+01  0.870452E+02 -0.107866E+02
  vertex -0.176910E+01  0.862540E+02 -0.122382E+02
 endloop
endfacet
facet normal -0.202010E+00  0.871743E+00 -0.446382E+00
 outer loop
  vertex -0.176900E+01  0.862539E+02 -0.122382E+02
  vertex -0.809850E+01  0.862540E+02 -0.937360E+01
  vertex -0.714160E+01  0.870451E+02 -0.826170E+01
 endloop
endfacet
facet normal -0.184448E+00  0.893839E+00 -0.408695E+00
 outer loop
  vertex -0.423220E+01  0.891924E+02 -0.488460E+01
  vertex -0.924500E+00  0.891924E+02 -0.637740E+01
  vertex -0.156010E+01  0.870452E+02 -0.107866E+02
 endloop
endfacet
facet normal -0.184926E+00  0.893668E+00 -0.408852E+00
 outer loop
  vertex -0.156000E+01  0.870451E+02 -0.107866E+02
  vertex -0.714160E+01  0.870452E+02 -0.826180E+01
  vertex -0.423220E+01  0.891923E+02 -0.488460E+01
 endloop
endfacet
facet normal -0.660254E-01  0.987023E+00 -0.146377E+00
 outer loop
  vertex -0.924400E+00  0.891923E+02 -0.637730E+01
  vertex -0.423220E+01  0.891924E+02 -0.488460E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.166920E-04 -0.100000E+01 -0.144716E-04
 outer loop
  vertex -0.795190E+01  0.601999E+02 -0.231840E+01
  vertex -0.542460E+01  0.602000E+02 -0.625690E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal -0.326950E-02 -0.999992E+00 -0.209803E-02
 outer loop
  vertex -0.877650E+01  0.602032E+02 -0.255890E+01
  vertex -0.598710E+01  0.602032E+02 -0.690580E+01
  vertex -0.542460E+01  0.602000E+02 -0.625690E+01
 endloop
endfacet
facet normal -0.336486E-02 -0.999992E+00 -0.218444E-02
 outer loop
  vertex -0.542460E+01  0.602000E+02 -0.625680E+01
  vertex -0.795190E+01  0.601999E+02 -0.231840E+01
  vertex -0.877640E+01  0.602032E+02 -0.255890E+01
 endloop
endfacet
facet normal -0.835345E+00 -0.122407E+00 -0.535925E+00
 outer loop
  vertex -0.891320E+01  0.613166E+02 -0.259920E+01
  vertex -0.608040E+01  0.613167E+02 -0.701470E+01
  vertex -0.598710E+01  0.602032E+02 -0.690580E+01
 endloop
endfacet
facet normal -0.835333E+00 -0.121963E+00 -0.536044E+00
 outer loop
  vertex -0.598710E+01  0.602032E+02 -0.690570E+01
  vertex -0.877650E+01  0.602032E+02 -0.255890E+01
  vertex -0.891320E+01  0.613166E+02 -0.259920E+01
 endloop
endfacet
facet normal -0.835580E+00 -0.122363E+00 -0.535569E+00
 outer loop
  vertex -0.964450E+01  0.672746E+02 -0.281530E+01
  vertex -0.657920E+01  0.672746E+02 -0.759770E+01
  vertex -0.608040E+01  0.613167E+02 -0.701470E+01
 endloop
endfacet
facet normal -0.835379E+00 -0.121956E+00 -0.535975E+00
 outer loop
  vertex -0.608030E+01  0.613166E+02 -0.701460E+01
  vertex -0.891320E+01  0.613166E+02 -0.259920E+01
  vertex -0.964440E+01  0.672745E+02 -0.281520E+01
 endloop
endfacet
facet normal -0.835924E+00 -0.122355E+00 -0.535034E+00
 outer loop
  vertex -0.109033E+02  0.775300E+02 -0.318710E+01
  vertex -0.743800E+01  0.775300E+02 -0.860120E+01
  vertex -0.657920E+01  0.672746E+02 -0.759770E+01
 endloop
endfacet
facet normal -0.835613E+00 -0.121981E+00 -0.535604E+00
 outer loop
  vertex -0.657910E+01  0.672745E+02 -0.759770E+01
  vertex -0.964450E+01  0.672746E+02 -0.281530E+01
  vertex -0.109033E+02  0.775299E+02 -0.318700E+01
 endloop
endfacet
facet normal -0.836109E+00 -0.122330E+00 -0.534750E+00
 outer loop
  vertex -0.117629E+02  0.845330E+02 -0.344100E+01
  vertex -0.802430E+01  0.845330E+02 -0.928650E+01
  vertex -0.743800E+01  0.775300E+02 -0.860120E+01
 endloop
endfacet
facet normal -0.835961E+00 -0.122005E+00 -0.535055E+00
 outer loop
  vertex -0.743800E+01  0.775299E+02 -0.860120E+01
  vertex -0.109033E+02  0.775300E+02 -0.318710E+01
  vertex -0.117629E+02  0.845329E+02 -0.344090E+01
 endloop
endfacet
facet normal -0.836150E+00 -0.122346E+00 -0.534682E+00
 outer loop
  vertex -0.119643E+02  0.861739E+02 -0.350050E+01
  vertex -0.816170E+01  0.861739E+02 -0.944710E+01
  vertex -0.802430E+01  0.845330E+02 -0.928650E+01
 endloop
endfacet
facet normal -0.836134E+00 -0.121992E+00 -0.534787E+00
 outer loop
  vertex -0.802420E+01  0.845329E+02 -0.928640E+01
  vertex -0.117629E+02  0.845330E+02 -0.344100E+01
  vertex -0.119643E+02  0.861738E+02 -0.350040E+01
 endloop
endfacet
facet normal -0.550346E+00  0.757146E+00 -0.351924E+00
 outer loop
  vertex -0.118715E+02  0.862540E+02 -0.347330E+01
  vertex -0.809850E+01  0.862540E+02 -0.937360E+01
  vertex -0.816170E+01  0.861739E+02 -0.944710E+01
 endloop
endfacet
facet normal -0.549785E+00  0.757711E+00 -0.351583E+00
 outer loop
  vertex -0.816170E+01  0.861738E+02 -0.944700E+01
  vertex -0.119643E+02  0.861739E+02 -0.350050E+01
  vertex -0.118715E+02  0.862539E+02 -0.347320E+01
 endloop
endfacet
facet normal -0.413270E+00  0.871375E+00 -0.264412E+00
 outer loop
  vertex -0.104689E+02  0.870452E+02 -0.306130E+01
  vertex -0.714160E+01  0.870452E+02 -0.826180E+01
  vertex -0.809850E+01  0.862540E+02 -0.937360E+01
 endloop
endfacet
facet normal -0.413633E+00  0.871171E+00 -0.264516E+00
 outer loop
  vertex -0.809850E+01  0.862539E+02 -0.937360E+01
  vertex -0.118715E+02  0.862540E+02 -0.347330E+01
  vertex -0.104688E+02  0.870451E+02 -0.306130E+01
 endloop
endfacet
facet normal -0.378018E+00  0.893495E+00 -0.242422E+00
 outer loop
  vertex -0.620400E+01  0.891924E+02 -0.180990E+01
  vertex -0.423220E+01  0.891924E+02 -0.488460E+01
  vertex -0.714160E+01  0.870452E+02 -0.826180E+01
 endloop
endfacet
facet normal -0.378618E+00  0.893284E+00 -0.242263E+00
 outer loop
  vertex -0.714160E+01  0.870451E+02 -0.826170E+01
  vertex -0.104689E+02  0.870452E+02 -0.306130E+01
  vertex -0.620390E+01  0.891923E+02 -0.180990E+01
 endloop
endfacet
facet normal -0.135022E+00  0.987049E+00 -0.866212E-01
 outer loop
  vertex -0.423220E+01  0.891923E+02 -0.488460E+01
  vertex -0.620400E+01  0.891924E+02 -0.180990E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.124728E-04 -0.100000E+01  0.000000E+00
 outer loop
  vertex -0.795190E+01  0.601999E+02  0.231840E+01
  vertex -0.795190E+01  0.601999E+02 -0.231840E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal -0.400156E-02 -0.999992E+00  0.000000E+00
 outer loop
  vertex -0.877650E+01  0.602032E+02  0.255890E+01
  vertex -0.877650E+01  0.602032E+02 -0.255890E+01
  vertex -0.795190E+01  0.601999E+02 -0.231840E+01
 endloop
endfacet
facet normal -0.400205E-02 -0.999992E+00  0.000000E+00
 outer loop
  vertex -0.795190E+01  0.601999E+02 -0.231830E+01
  vertex -0.795190E+01  0.601999E+02  0.231840E+01
  vertex -0.877640E+01  0.602032E+02  0.255890E+01
 endloop
endfacet
facet normal -0.992547E+00 -0.121863E+00  0.232506E-05
 outer loop
  vertex -0.891320E+01  0.613167E+02  0.259920E+01
  vertex -0.891320E+01  0.613166E+02 -0.259920E+01
  vertex -0.877650E+01  0.602032E+02 -0.255890E+01
 endloop
endfacet
facet normal -0.992547E+00 -0.121862E+00 -0.194204E-04
 outer loop
  vertex -0.877640E+01  0.602032E+02 -0.255890E+01
  vertex -0.877650E+01  0.602032E+02  0.255890E+01
  vertex -0.891320E+01  0.613166E+02  0.259920E+01
 endloop
endfacet
facet normal -0.992551E+00 -0.121828E+00  0.000000E+00
 outer loop
  vertex -0.964450E+01  0.672746E+02  0.281530E+01
  vertex -0.964450E+01  0.672746E+02 -0.281530E+01
  vertex -0.891320E+01  0.613166E+02 -0.259920E+01
 endloop
endfacet
facet normal -0.992553E+00 -0.121816E+00  0.232417E-05
 outer loop
  vertex -0.891320E+01  0.613166E+02 -0.259920E+01
  vertex -0.891320E+01  0.613167E+02  0.259920E+01
  vertex -0.964440E+01  0.672745E+02  0.281520E+01
 endloop
endfacet
facet normal -0.992551E+00 -0.121831E+00  0.000000E+00
 outer loop
  vertex -0.109033E+02  0.775300E+02  0.318710E+01
  vertex -0.109033E+02  0.775300E+02 -0.318710E+01
  vertex -0.964450E+01  0.672746E+02 -0.281530E+01
 endloop
endfacet
facet normal -0.992551E+00 -0.121831E+00 -0.155060E-04
 outer loop
  vertex -0.964440E+01  0.672745E+02 -0.281520E+01
  vertex -0.964450E+01  0.672746E+02  0.281530E+01
  vertex -0.109033E+02  0.775299E+02  0.318700E+01
 endloop
endfacet
facet normal -0.992551E+00 -0.121833E+00  0.000000E+00
 outer loop
  vertex -0.117629E+02  0.845330E+02  0.344100E+01
  vertex -0.117629E+02  0.845330E+02 -0.344100E+01
  vertex -0.109033E+02  0.775300E+02 -0.318710E+01
 endloop
endfacet
facet normal -0.992550E+00 -0.121835E+00  0.189577E-05
 outer loop
  vertex -0.109033E+02  0.775299E+02 -0.318700E+01
  vertex -0.109033E+02  0.775300E+02  0.318710E+01
  vertex -0.117629E+02  0.845329E+02  0.344090E+01
 endloop
endfacet
facet normal -0.992552E+00 -0.121823E+00  0.000000E+00
 outer loop
  vertex -0.119643E+02  0.861739E+02  0.350050E+01
  vertex -0.119643E+02  0.861739E+02 -0.350050E+01
  vertex -0.117629E+02  0.845330E+02 -0.344100E+01
 endloop
endfacet
facet normal -0.992551E+00 -0.121831E+00  0.175583E-05
 outer loop
  vertex -0.117629E+02  0.845329E+02 -0.344090E+01
  vertex -0.117629E+02  0.845330E+02  0.344100E+01
  vertex -0.119643E+02  0.861738E+02  0.350040E+01
 endloop
endfacet
facet normal -0.653412E+00  0.757003E+00  0.000000E+00
 outer loop
  vertex -0.118715E+02  0.862540E+02  0.347330E+01
  vertex -0.118715E+02  0.862540E+02 -0.347330E+01
  vertex -0.119643E+02  0.861739E+02 -0.350050E+01
 endloop
endfacet
facet normal -0.652949E+00  0.757401E+00 -0.107301E-04
 outer loop
  vertex -0.119643E+02  0.861738E+02 -0.350040E+01
  vertex -0.119643E+02  0.861739E+02  0.350050E+01
  vertex -0.118715E+02  0.862539E+02  0.347320E+01
 endloop
endfacet
facet normal -0.491316E+00  0.870982E+00  0.000000E+00
 outer loop
  vertex -0.104689E+02  0.870452E+02  0.306130E+01
  vertex -0.104689E+02  0.870452E+02 -0.306130E+01
  vertex -0.118715E+02  0.862540E+02 -0.347330E+01
 endloop
endfacet
facet normal -0.491245E+00  0.871021E+00 -0.124364E-04
 outer loop
  vertex -0.118715E+02  0.862539E+02 -0.347320E+01
  vertex -0.118715E+02  0.862540E+02  0.347330E+01
  vertex -0.104688E+02  0.870451E+02  0.306130E+01
 endloop
endfacet
facet normal -0.449683E+00  0.893188E+00  0.000000E+00
 outer loop
  vertex -0.620400E+01  0.891924E+02  0.180990E+01
  vertex -0.620400E+01  0.891924E+02 -0.180990E+01
  vertex -0.104689E+02  0.870452E+02 -0.306130E+01
 endloop
endfacet
facet normal -0.449664E+00  0.893198E+00 -0.218235E-04
 outer loop
  vertex -0.104688E+02  0.870451E+02 -0.306130E+01
  vertex -0.104689E+02  0.870452E+02  0.306130E+01
  vertex -0.620390E+01  0.891923E+02  0.180990E+01
 endloop
endfacet
facet normal -0.160304E+00  0.987068E+00 -0.314801E-04
 outer loop
  vertex -0.620390E+01  0.891923E+02 -0.180990E+01
  vertex -0.620400E+01  0.891924E+02  0.180990E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.166920E-04 -0.100000E+01  0.144716E-04
 outer loop
  vertex -0.542460E+01  0.602000E+02  0.625690E+01
  vertex -0.795190E+01  0.601999E+02  0.231840E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal -0.337071E-02 -0.999992E+00  0.216298E-02
 outer loop
  vertex -0.598710E+01  0.602032E+02  0.690580E+01
  vertex -0.877650E+01  0.602032E+02  0.255890E+01
  vertex -0.795190E+01  0.601999E+02  0.231840E+01
 endloop
endfacet
facet normal -0.325307E-02 -0.999992E+00  0.211260E-02
 outer loop
  vertex -0.795190E+01  0.601999E+02  0.231830E+01
  vertex -0.542460E+01  0.602000E+02  0.625690E+01
  vertex -0.598710E+01  0.602032E+02  0.690570E+01
 endloop
endfacet
facet normal -0.835393E+00 -0.121956E+00  0.535953E+00
 outer loop
  vertex -0.608040E+01  0.613167E+02  0.701470E+01
  vertex -0.891320E+01  0.613167E+02  0.259920E+01
  vertex -0.877650E+01  0.602032E+02  0.255890E+01
 endloop
endfacet
facet normal -0.835313E+00 -0.122299E+00  0.536000E+00
 outer loop
  vertex -0.877640E+01  0.602032E+02  0.255890E+01
  vertex -0.598710E+01  0.602032E+02  0.690580E+01
  vertex -0.608030E+01  0.613166E+02  0.701460E+01
 endloop
endfacet
facet normal -0.835618E+00 -0.121994E+00  0.535593E+00
 outer loop
  vertex -0.657920E+01  0.672746E+02  0.759770E+01
  vertex -0.964450E+01  0.672746E+02  0.281530E+01
  vertex -0.891320E+01  0.613167E+02  0.259920E+01
 endloop
endfacet
facet normal -0.835349E+00 -0.122366E+00  0.535928E+00
 outer loop
  vertex -0.891320E+01  0.613166E+02  0.259920E+01
  vertex -0.608040E+01  0.613167E+02  0.701470E+01
  vertex -0.657910E+01  0.672745E+02  0.759770E+01
 endloop
endfacet
facet normal -0.835960E+00 -0.122008E+00  0.535057E+00
 outer loop
  vertex -0.743800E+01  0.775300E+02  0.860120E+01
  vertex -0.109033E+02  0.775300E+02  0.318710E+01
  vertex -0.964450E+01  0.672746E+02  0.281530E+01
 endloop
endfacet
facet normal -0.835590E+00 -0.122378E+00  0.535549E+00
 outer loop
  vertex -0.964440E+01  0.672745E+02  0.281520E+01
  vertex -0.657920E+01  0.672746E+02  0.759770E+01
  vertex -0.743800E+01  0.775299E+02  0.860120E+01
 endloop
endfacet
facet normal -0.836141E+00 -0.122023E+00  0.534770E+00
 outer loop
  vertex -0.802430E+01  0.845330E+02  0.928650E+01
  vertex -0.117629E+02  0.845330E+02  0.344100E+01
  vertex -0.109033E+02  0.775300E+02  0.318710E+01
 endloop
endfacet
facet normal -0.835930E+00 -0.122324E+00  0.535030E+00
 outer loop
  vertex -0.109033E+02  0.775299E+02  0.318700E+01
  vertex -0.743800E+01  0.775300E+02  0.860120E+01
  vertex -0.802420E+01  0.845329E+02  0.928640E+01
 endloop
endfacet
facet normal -0.836183E+00 -0.122020E+00  0.534704E+00
 outer loop
  vertex -0.816170E+01  0.861739E+02  0.944710E+01
  vertex -0.119643E+02  0.861739E+02  0.350050E+01
  vertex -0.117629E+02  0.845330E+02  0.344100E+01
 endloop
endfacet
facet normal -0.836113E+00 -0.122324E+00  0.534745E+00
 outer loop
  vertex -0.117629E+02  0.845329E+02  0.344090E+01
  vertex -0.802430E+01  0.845330E+02  0.928650E+01
  vertex -0.816170E+01  0.861738E+02  0.944700E+01
 endloop
endfacet
facet normal -0.550365E+00  0.757126E+00  0.351936E+00
 outer loop
  vertex -0.809850E+01  0.862540E+02  0.937360E+01
  vertex -0.118715E+02  0.862540E+02  0.347330E+01
  vertex -0.119643E+02  0.861739E+02  0.350050E+01
 endloop
endfacet
facet normal -0.549966E+00  0.757543E+00  0.351661E+00
 outer loop
  vertex -0.119643E+02  0.861738E+02  0.350040E+01
  vertex -0.816170E+01  0.861739E+02  0.944710E+01
  vertex -0.809850E+01  0.862539E+02  0.937360E+01
 endloop
endfacet
facet normal -0.413653E+00  0.871119E+00  0.264657E+00
 outer loop
  vertex -0.714160E+01  0.870452E+02  0.826180E+01
  vertex -0.104689E+02  0.870452E+02  0.306130E+01
  vertex -0.118715E+02  0.862540E+02  0.347330E+01
 endloop
endfacet
facet normal -0.413318E+00  0.871392E+00  0.264281E+00
 outer loop
  vertex -0.118715E+02  0.862539E+02  0.347320E+01
  vertex -0.809850E+01  0.862540E+02  0.937360E+01
  vertex -0.714160E+01  0.870451E+02  0.826170E+01
 endloop
endfacet
facet normal -0.378481E+00  0.893219E+00  0.242719E+00
 outer loop
  vertex -0.423220E+01  0.891924E+02  0.488460E+01
  vertex -0.620400E+01  0.891924E+02  0.180990E+01
  vertex -0.104689E+02  0.870452E+02  0.306130E+01
 endloop
endfacet
facet normal -0.378371E+00  0.893444E+00  0.242059E+00
 outer loop
  vertex -0.104688E+02  0.870451E+02  0.306130E+01
  vertex -0.714160E+01  0.870452E+02  0.826180E+01
  vertex -0.423220E+01  0.891923E+02  0.488460E+01
 endloop
endfacet
facet normal -0.135054E+00  0.987049E+00  0.865735E-01
 outer loop
  vertex -0.620390E+01  0.891923E+02  0.180990E+01
  vertex -0.423220E+01  0.891924E+02  0.488460E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.000000E+00 -0.100000E+01  0.000000E+00
 outer loop
  vertex -0.118500E+01  0.602000E+02  0.816910E+01
  vertex -0.542460E+01  0.602000E+02  0.625690E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal -0.989644E+00  0.000000E+00 -0.143546E+00
 outer loop
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
  vertex  0.000000E+00  0.601999E+02  0.000000E+00
  vertex -0.118490E+01  0.602000E+02  0.816900E+01
 endloop
endfacet
facet normal -0.159926E-02 -0.999992E+00  0.354589E-02
 outer loop
  vertex -0.130790E+01  0.602032E+02  0.901620E+01
  vertex -0.598710E+01  0.602032E+02  0.690580E+01
  vertex -0.542460E+01  0.602000E+02  0.625690E+01
 endloop
endfacet
facet normal -0.159959E-02 -0.999992E+00  0.354631E-02
 outer loop
  vertex -0.542460E+01  0.602000E+02  0.625680E+01
  vertex -0.118500E+01  0.602000E+02  0.816910E+01
  vertex -0.130780E+01  0.602032E+02  0.901620E+01
 endloop
endfacet
facet normal -0.408106E+00 -0.122670E+00  0.904656E+00
 outer loop
  vertex -0.132820E+01  0.613167E+02  0.915850E+01
  vertex -0.608040E+01  0.613167E+02  0.701470E+01
  vertex -0.598710E+01  0.602032E+02  0.690580E+01
 endloop
endfacet
facet normal -0.408033E+00 -0.122942E+00  0.904652E+00
 outer loop
  vertex -0.598710E+01  0.602032E+02  0.690570E+01
  vertex -0.130790E+01  0.602032E+02  0.901620E+01
  vertex -0.132810E+01  0.613166E+02  0.915840E+01
 endloop
endfacet
facet normal -0.408434E+00 -0.122703E+00  0.904503E+00
 outer loop
  vertex -0.143720E+01  0.672746E+02  0.991960E+01
  vertex -0.657920E+01  0.672746E+02  0.759770E+01
  vertex -0.608040E+01  0.613167E+02  0.701470E+01
 endloop
endfacet
facet normal -0.408110E+00 -0.123007E+00  0.904608E+00
 outer loop
  vertex -0.608030E+01  0.613166E+02  0.701460E+01
  vertex -0.132820E+01  0.613167E+02  0.915850E+01
  vertex -0.143710E+01  0.672745E+02  0.991950E+01
 endloop
endfacet
facet normal -0.408900E+00 -0.122727E+00  0.904289E+00
 outer loop
  vertex -0.162480E+01  0.775300E+02  0.112298E+02
  vertex -0.743800E+01  0.775300E+02  0.860120E+01
  vertex -0.657920E+01  0.672746E+02  0.759770E+01
 endloop
endfacet
facet normal -0.408422E+00 -0.123020E+00  0.904465E+00
 outer loop
  vertex -0.657910E+01  0.672745E+02  0.759770E+01
  vertex -0.143720E+01  0.672746E+02  0.991960E+01
  vertex -0.162470E+01  0.775299E+02  0.112298E+02
 endloop
endfacet
facet normal -0.409164E+00 -0.122736E+00  0.904169E+00
 outer loop
  vertex -0.175290E+01  0.845330E+02  0.121245E+02
  vertex -0.802430E+01  0.845330E+02  0.928650E+01
  vertex -0.743800E+01  0.775300E+02  0.860120E+01
 endloop
endfacet
facet normal -0.408883E+00 -0.123009E+00  0.904258E+00
 outer loop
  vertex -0.743800E+01  0.775299E+02  0.860120E+01
  vertex -0.162480E+01  0.775300E+02  0.112298E+02
  vertex -0.175290E+01  0.845329E+02  0.121245E+02
 endloop
endfacet
facet normal -0.409210E+00 -0.122756E+00  0.904145E+00
 outer loop
  vertex -0.178290E+01  0.861739E+02  0.123341E+02
  vertex -0.816170E+01  0.861739E+02  0.944710E+01
  vertex -0.802430E+01  0.845330E+02  0.928650E+01
 endloop
endfacet
facet normal -0.409171E+00 -0.122898E+00  0.904143E+00
 outer loop
  vertex -0.802420E+01  0.845329E+02  0.928640E+01
  vertex -0.175290E+01  0.845330E+02  0.121245E+02
  vertex -0.178280E+01  0.861738E+02  0.123340E+02
 endloop
endfacet
facet normal -0.269052E+00  0.757766E+00  0.594476E+00
 outer loop
  vertex -0.176910E+01  0.862540E+02  0.122382E+02
  vertex -0.809850E+01  0.862540E+02  0.937360E+01
  vertex -0.816170E+01  0.861739E+02  0.944710E+01
 endloop
endfacet
facet normal -0.268750E+00  0.758438E+00  0.593755E+00
 outer loop
  vertex -0.816170E+01  0.861738E+02  0.944700E+01
  vertex -0.178290E+01  0.861739E+02  0.123341E+02
  vertex -0.176900E+01  0.862539E+02  0.122382E+02
 endloop
endfacet
facet normal -0.201973E+00  0.871693E+00  0.446496E+00
 outer loop
  vertex -0.156010E+01  0.870452E+02  0.107866E+02
  vertex -0.714160E+01  0.870452E+02  0.826180E+01
  vertex -0.809850E+01  0.862540E+02  0.937360E+01
 endloop
endfacet
facet normal -0.201910E+00  0.871913E+00  0.446094E+00
 outer loop
  vertex -0.809850E+01  0.862539E+02  0.937360E+01
  vertex -0.176910E+01  0.862540E+02  0.122382E+02
  vertex -0.156000E+01  0.870451E+02  0.107866E+02
 endloop
endfacet
facet normal -0.184631E+00  0.893616E+00  0.409099E+00
 outer loop
  vertex -0.924500E+00  0.891924E+02  0.637740E+01
  vertex -0.423220E+01  0.891924E+02  0.488460E+01
  vertex -0.714160E+01  0.870452E+02  0.826180E+01
 endloop
endfacet
facet normal -0.184848E+00  0.893805E+00  0.408587E+00
 outer loop
  vertex -0.714160E+01  0.870451E+02  0.826170E+01
  vertex -0.156010E+01  0.870452E+02  0.107866E+02
  vertex -0.924400E+00  0.891923E+02  0.637730E+01
 endloop
endfacet
facet normal  0.755775E+00  0.000000E+00  0.654832E+00
 outer loop
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
  vertex  0.000000E+00  0.902000E+02  0.000000E+00
  vertex -0.423220E+01  0.891924E+02  0.488460E+01
 endloop
endfacet
facet normal -0.660728E-01  0.987026E+00  0.146336E+00
 outer loop
  vertex -0.423220E+01  0.891923E+02  0.488460E+01
  vertex -0.924500E+00  0.891924E+02  0.637740E+01
  vertex  0.000000E+00  0.901998E+02  0.000000E+00
 endloop
endfacet
facet normal  0.171006E-05 -0.100000E+01  0.123892E-04
 outer loop
  vertex  0.345390E+01  0.602000E+02  0.752880E+01
  vertex -0.118500E+01  0.602000E+02  0.816910E+01
  vertex  0.000000E+00  0.601999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.908918E+00  0.000000E+00 -0.416974E+00
 outer loop
  vertex  0.000000E+00  0.601999E+02  0.000000E+00
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
  vertex  0.345390E+01  0.602000E+02  0.752880E+01
 endloop
endfacet
facet normal  0.532074E-03 -0.999992E+00  0.385539E-02
 outer loop
  vertex  0.381210E+01  0.602032E+02  0.830960E+01
  vertex -0.130790E+01  0.602032E+02  0.901620E+01
  vertex -0.118500E+01  0.602000E+02  0.816910E+01
 endloop
endfacet
facet normal  0.532092E-03 -0.999992E+00  0.385547E-02
 outer loop
  vertex -0.118490E+01  0.602000E+02  0.816900E+01
  vertex  0.345390E+01  0.602000E+02  0.752880E+01
  vertex  0.381200E+01  0.602032E+02  0.830950E+01
 endloop
endfacet
facet normal  0.135709E+00 -0.123157E+00  0.983064E+00
 outer loop
  vertex  0.387150E+01  0.613167E+02  0.844070E+01
  vertex -0.132820E+01  0.613167E+02  0.915850E+01
  vertex -0.130790E+01  0.602032E+02  0.901620E+01
 endloop
endfacet
facet normal  0.135678E+00 -0.122908E+00  0.983100E+00
 outer loop
  vertex -0.130780E+01  0.602032E+02  0.901620E+01
  vertex  0.381210E+01  0.602032E+02  0.830960E+01
  vertex  0.387150E+01  0.613166E+02  0.844060E+01
 endloop
endfacet
facet normal  0.135831E+00 -0.123097E+00  0.983055E+00
 outer loop
  vertex  0.418910E+01  0.672746E+02  0.914220E+01
  vertex -0.143720E+01  0.672746E+02  0.991960E+01
  vertex -0.132820E+01  0.613167E+02  0.915850E+01
 endloop
endfacet
facet normal  0.135698E+00 -0.122985E+00  0.983087E+00
 outer loop
  vertex -0.132810E+01  0.613166E+02  0.915840E+01
  vertex  0.387150E+01  0.613167E+02  0.844070E+01
  vertex  0.418900E+01  0.672745E+02  0.914220E+01
 endloop
endfacet
facet normal  0.136017E+00 -0.123101E+00  0.983029E+00
 outer loop
  vertex  0.473590E+01  0.775300E+02  0.103497E+02
  vertex -0.162480E+01  0.775300E+02  0.112298E+02
  vertex -0.143720E+01  0.672746E+02  0.991960E+01
 endloop
endfacet
facet normal  0.135820E+00 -0.122981E+00  0.983071E+00
 outer loop
  vertex -0.143710E+01  0.672745E+02  0.991950E+01
  vertex  0.418910E+01  0.672746E+02  0.914220E+01
  vertex  0.473580E+01  0.775299E+02  0.103496E+02
 endloop
endfacet
facet normal  0.136133E+00 -0.123099E+00  0.983013E+00
 outer loop
  vertex  0.510920E+01  0.845330E+02  0.111742E+02
  vertex -0.175290E+01  0.845330E+02  0.121245E+02
  vertex -0.162480E+01  0.775300E+02  0.112298E+02
 endloop
endfacet
facet normal  0.136023E+00 -0.122991E+00  0.983042E+00
 outer loop
  vertex -0.162470E+01  0.775299E+02  0.112298E+02
  vertex  0.473590E+01  0.775300E+02  0.103497E+02
  vertex  0.510920E+01  0.845329E+02  0.111742E+02
 endloop
endfacet
facet normal  0.136151E+00 -0.123076E+00  0.983013E+00
 outer loop
  vertex  0.519670E+01  0.861739E+02  0.113674E+02
  vertex -0.178290E+01  0.861739E+02  0.123341E+02
  vertex -0.175290E+01  0.845330E+02  0.121245E+02
 endloop
endfacet
facet normal  0.136136E+00 -0.123008E+00  0.983024E+00
 outer loop
  vertex -0.175290E+01  0.845329E+02  0.121245E+02
  vertex  0.510920E+01  0.845330E+02  0.111742E+02
  vertex  0.519670E+01  0.861738E+02  0.113674E+02
 endloop
endfacet
facet normal  0.894767E-01  0.758043E+00  0.646038E+00
 outer loop
  vertex  0.515650E+01  0.862540E+02  0.112790E+02
  vertex -0.176910E+01  0.862540E+02  0.122382E+02
  vertex -0.178290E+01  0.861739E+02  0.123341E+02
 endloop
endfacet
facet normal  0.894005E-01  0.758416E+00  0.645610E+00
 outer loop
  vertex -0.178280E+01  0.861738E+02  0.123340E+02
  vertex  0.519670E+01  0.861739E+02  0.113674E+02
  vertex  0.515640E+01  0.862539E+02  0.112790E+02
 endloop
endfacet
facet normal  0.671268E-01  0.871970E+00  0.484935E+00
 outer loop
  vertex  0.454720E+01  0.870452E+02  0.994120E+01
  vertex -0.156010E+01  0.870452E+02  0.107866E+02
  vertex -0.176910E+01  0.862540E+02  0.122382E+02
 endloop
endfacet
facet normal  0.671635E-01  0.871922E+00  0.485016E+00
 outer loop
  vertex -0.176900E+01  0.862539E+02  0.122382E+02
  vertex  0.515650E+01  0.862540E+02  0.112790E+02
  vertex  0.454720E+01  0.870451E+02  0.994120E+01
 endloop
endfacet
facet normal  0.613335E-01  0.893858E+00  0.444134E+00
 outer loop
  vertex  0.269470E+01  0.891924E+02  0.587760E+01
  vertex -0.924500E+00  0.891924E+02  0.637740E+01
  vertex -0.156010E+01  0.870452E+02  0.107866E+02
 endloop
endfacet
facet normal  0.614793E-01  0.893799E+00  0.444234E+00
 outer loop
  vertex -0.156000E+01  0.870451E+02  0.107866E+02
  vertex  0.454720E+01  0.870452E+02  0.994120E+01
  vertex  0.269470E+01  0.891923E+02  0.587760E+01
 endloop
endfacet
facet normal -0.989655E+00  0.000000E+00 -0.143465E+00
 outer loop
  vertex  0.000000E+00  0.902000E+02  0.000000E+00
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
  vertex -0.924500E+00  0.891924E+02  0.637740E+01
 endloop
endfacet
facet normal  0.219441E-01  0.987014E+00  0.159127E+00
 outer loop
  vertex -0.924400E+00  0.891923E+02  0.637730E+01
  vertex  0.269470E+01  0.891924E+02  0.587760E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.000000E+00 -0.100000E+01  0.000000E+00
 outer loop
  vertex  0.695780E+01  0.602000E+02  0.446230E+01
  vertex  0.345390E+01  0.602000E+02  0.752880E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal  0.255968E-02 -0.999992E+00  0.292473E-02
 outer loop
  vertex  0.767940E+01  0.602032E+02  0.492500E+01
  vertex  0.381210E+01  0.602032E+02  0.830960E+01
  vertex  0.345390E+01  0.602000E+02  0.752880E+01
 endloop
endfacet
facet normal  0.256000E-02 -0.999992E+00  0.292515E-02
 outer loop
  vertex  0.345390E+01  0.602000E+02  0.752880E+01
  vertex  0.695780E+01  0.602000E+02  0.446230E+01
  vertex  0.767930E+01  0.602032E+02  0.492500E+01
 endloop
endfacet
facet normal  0.653684E+00 -0.122790E+00  0.746740E+00
 outer loop
  vertex  0.779890E+01  0.613166E+02  0.500270E+01
  vertex  0.387150E+01  0.613167E+02  0.844070E+01
  vertex  0.381210E+01  0.602032E+02  0.830960E+01
 endloop
endfacet
facet normal  0.653626E+00 -0.122208E+00  0.746885E+00
 outer loop
  vertex  0.381200E+01  0.602032E+02  0.830950E+01
  vertex  0.767940E+01  0.602032E+02  0.492500E+01
  vertex  0.779890E+01  0.613166E+02  0.500260E+01
 endloop
endfacet
facet normal  0.654043E+00 -0.122752E+00  0.746431E+00
 outer loop
  vertex  0.843880E+01  0.672746E+02  0.541850E+01
  vertex  0.418910E+01  0.672746E+02  0.914220E+01
  vertex  0.387150E+01  0.613167E+02  0.844070E+01
 endloop
endfacet
facet normal  0.653714E+00 -0.122306E+00  0.746792E+00
 outer loop
  vertex  0.387150E+01  0.613166E+02  0.844060E+01
  vertex  0.779890E+01  0.613166E+02  0.500270E+01
  vertex  0.843870E+01  0.672745E+02  0.541840E+01
 endloop
endfacet
facet normal  0.654550E+00 -0.122734E+00  0.745990E+00
 outer loop
  vertex  0.954030E+01  0.775300E+02  0.613420E+01
  vertex  0.473590E+01  0.775300E+02  0.103497E+02
  vertex  0.418910E+01  0.672746E+02  0.914220E+01
 endloop
endfacet
facet normal  0.654069E+00 -0.122347E+00  0.746475E+00
 outer loop
  vertex  0.418900E+01  0.672745E+02  0.914220E+01
  vertex  0.843880E+01  0.672746E+02  0.541850E+01
  vertex  0.954030E+01  0.775299E+02  0.613420E+01
 endloop
endfacet
facet normal  0.654831E+00 -0.122707E+00  0.745747E+00
 outer loop
  vertex  0.102924E+02  0.845330E+02  0.662290E+01
  vertex  0.510920E+01  0.845330E+02  0.111742E+02
  vertex  0.473590E+01  0.775300E+02  0.103497E+02
 endloop
endfacet
facet normal  0.654565E+00 -0.122362E+00  0.746038E+00
 outer loop
  vertex  0.473580E+01  0.775299E+02  0.103496E+02
  vertex  0.954030E+01  0.775300E+02  0.613420E+01
  vertex  0.102924E+02  0.845329E+02  0.662290E+01
 endloop
endfacet
facet normal  0.654895E+00 -0.122720E+00  0.745689E+00
 outer loop
  vertex  0.104686E+02  0.861739E+02  0.673740E+01
  vertex  0.519670E+01  0.861739E+02  0.113674E+02
  vertex  0.510920E+01  0.845330E+02  0.111742E+02
 endloop
endfacet
facet normal  0.654860E+00 -0.122366E+00  0.745778E+00
 outer loop
  vertex  0.510920E+01  0.845329E+02  0.111742E+02
  vertex  0.102924E+02  0.845330E+02  0.662290E+01
  vertex  0.104686E+02  0.861738E+02  0.673740E+01
 endloop
endfacet
facet normal  0.430776E+00  0.757519E+00  0.490507E+00
 outer loop
  vertex  0.103875E+02  0.862540E+02  0.668500E+01
  vertex  0.515650E+01  0.862540E+02  0.112790E+02
  vertex  0.519670E+01  0.861739E+02  0.113674E+02
 endloop
endfacet
facet normal  0.430251E+00  0.758199E+00  0.489916E+00
 outer loop
  vertex  0.519670E+01  0.861738E+02  0.113674E+02
  vertex  0.104686E+02  0.861739E+02  0.673740E+01
  vertex  0.103874E+02  0.862539E+02  0.668490E+01
 endloop
endfacet
facet normal  0.323277E+00  0.871693E+00  0.368298E+00
 outer loop
  vertex  0.916020E+01  0.870452E+02  0.589210E+01
  vertex  0.454720E+01  0.870452E+02  0.994120E+01
  vertex  0.515650E+01  0.862540E+02  0.112790E+02
 endloop
endfacet
facet normal  0.323623E+00  0.871470E+00  0.368522E+00
 outer loop
  vertex  0.515640E+01  0.862539E+02  0.112790E+02
  vertex  0.103875E+02  0.862540E+02  0.668500E+01
  vertex  0.916020E+01  0.870451E+02  0.589200E+01
 endloop
endfacet
facet normal  0.295562E+00  0.893720E+00  0.337501E+00
 outer loop
  vertex  0.542840E+01  0.891924E+02  0.348360E+01
  vertex  0.269470E+01  0.891924E+02  0.587760E+01
  vertex  0.454720E+01  0.870452E+02  0.994120E+01
 endloop
endfacet
facet normal  0.296235E+00  0.893493E+00  0.337512E+00
 outer loop
  vertex  0.454720E+01  0.870451E+02  0.994120E+01
  vertex  0.916020E+01  0.870452E+02  0.589210E+01
  vertex  0.542840E+01  0.891923E+02  0.348350E+01
 endloop
endfacet
facet normal  0.105706E+00  0.987039E+00  0.120746E+00
 outer loop
  vertex  0.269470E+01  0.891923E+02  0.587760E+01
  vertex  0.542840E+01  0.891924E+02  0.348360E+01
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
facet normal  0.000000E+00 -0.100000E+01  0.000000E+00
 outer loop
  vertex  0.830570E+01  0.602000E+02  0.000000E+00
  vertex  0.695780E+01  0.602000E+02  0.446230E+01
  vertex  0.000000E+00  0.602000E+02  0.000000E+00
 endloop
endfacet
facet normal  0.371565E-02 -0.999992E+00  0.112231E-02
 outer loop
  vertex  0.916700E+01  0.602032E+02  0.000000E+00
  vertex  0.767940E+01  0.602032E+02  0.492500E+01
  vertex  0.695780E+01  0.602000E+02  0.446230E+01
 endloop
endfacet
facet normal  0.371634E-02 -0.999992E+00  0.112268E-02
 outer loop
  vertex  0.695770E+01  0.602000E+02  0.446220E+01
  vertex  0.830570E+01  0.602000E+02  0.000000E+00
  vertex  0.916690E+01  0.602032E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950143E+00 -0.122004E+00  0.286957E+00
 outer loop
  vertex  0.930980E+01  0.613167E+02  0.000000E+00
  vertex  0.779890E+01  0.613166E+02  0.500270E+01
  vertex  0.767940E+01  0.602032E+02  0.492500E+01
 endloop
endfacet
facet normal  0.950144E+00 -0.121862E+00  0.287011E+00
 outer loop
  vertex  0.767930E+01  0.602032E+02  0.492500E+01
  vertex  0.916700E+01  0.602032E+02  0.000000E+00
  vertex  0.930980E+01  0.613166E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950216E+00 -0.122062E+00  0.286687E+00
 outer loop
  vertex  0.100736E+02  0.672746E+02  0.000000E+00
  vertex  0.843880E+01  0.672746E+02  0.541850E+01
  vertex  0.779890E+01  0.613166E+02  0.500270E+01
 endloop
endfacet
facet normal  0.950165E+00 -0.121797E+00  0.286969E+00
 outer loop
  vertex  0.779890E+01  0.613166E+02  0.500260E+01
  vertex  0.930980E+01  0.613167E+02  0.000000E+00
  vertex  0.100735E+02  0.672745E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950330E+00 -0.122053E+00  0.286314E+00
 outer loop
  vertex  0.113884E+02  0.775300E+02  0.000000E+00
  vertex  0.954030E+01  0.775300E+02  0.613420E+01
  vertex  0.843880E+01  0.672746E+02  0.541850E+01
 endloop
endfacet
facet normal  0.950238E+00 -0.121827E+00  0.286714E+00
 outer loop
  vertex  0.843870E+01  0.672745E+02  0.541840E+01
  vertex  0.100736E+02  0.672746E+02  0.000000E+00
  vertex  0.113884E+02  0.775299E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950393E+00 -0.122035E+00  0.286112E+00
 outer loop
  vertex  0.122862E+02  0.845330E+02  0.000000E+00
  vertex  0.102924E+02  0.845330E+02  0.662290E+01
  vertex  0.954030E+01  0.775300E+02  0.613420E+01
 endloop
endfacet
facet normal  0.950357E+00 -0.121826E+00  0.286320E+00
 outer loop
  vertex  0.954030E+01  0.775299E+02  0.613420E+01
  vertex  0.113884E+02  0.775300E+02  0.000000E+00
  vertex  0.122861E+02  0.845329E+02  0.000000E+00
 endloop
endfacet
facet normal  0.950406E+00 -0.122017E+00  0.286078E+00
 outer loop
  vertex  0.124966E+02  0.861739E+02  0.000000E+00
  vertex  0.104686E+02  0.861739E+02  0.673740E+01
  vertex  0.102924E+02  0.845330E+02  0.662290E+01
 endloop
endfacet
facet normal  0.950413E+00 -0.121872E+00  0.286116E+00
 outer loop
  vertex  0.102924E+02  0.845329E+02  0.662290E+01
  vertex  0.122862E+02  0.845330E+02  0.000000E+00
  vertex  0.124966E+02  0.861738E+02  0.000000E+00
 endloop
endfacet
facet normal  0.625826E+00  0.756871E+00  0.188384E+00
 outer loop
  vertex  0.123998E+02  0.862540E+02  0.000000E+00
  vertex  0.103875E+02  0.862540E+02  0.668500E+01
  vertex  0.104686E+02  0.861739E+02  0.673740E+01
 endloop
endfacet
facet normal  0.625655E+00  0.757024E+00  0.188337E+00
 outer loop
  vertex  0.104686E+02  0.861738E+02  0.673740E+01
  vertex  0.124966E+02  0.861739E+02  0.000000E+00
  vertex  0.123998E+02  0.862539E+02  0.000000E+00
 endloop
endfacet
facet normal  0.470136E+00  0.871163E+00  0.141589E+00
 outer loop
  vertex  0.109347E+02  0.870452E+02  0.000000E+00
  vertex  0.916020E+01  0.870452E+02  0.589210E+01
  vertex  0.103875E+02  0.862540E+02  0.668500E+01
 endloop
endfacet
facet normal  0.470336E+00  0.871053E+00  0.141601E+00
 outer loop
  vertex  0.103874E+02  0.862539E+02  0.668490E+01
  vertex  0.123998E+02  0.862540E+02  0.000000E+00
  vertex  0.109347E+02  0.870451E+02  0.000000E+00
 endloop
endfacet
facet normal  0.430198E+00  0.893345E+00  0.129865E+00
 outer loop
  vertex  0.648000E+01  0.891924E+02  0.000000E+00
  vertex  0.542840E+01  0.891924E+02  0.348360E+01
  vertex  0.916020E+01  0.870452E+02  0.589210E+01
 endloop
endfacet
facet normal  0.430518E+00  0.893218E+00  0.129675E+00
 outer loop
  vertex  0.916020E+01  0.870451E+02  0.589200E+01
  vertex  0.109347E+02  0.870452E+02  0.000000E+00
  vertex  0.648000E+01  0.891923E+02  0.000000E+00
 endloop
endfacet
facet normal  0.153467E+00  0.987066E+00  0.463569E-01
 outer loop
  vertex  0.542840E+01  0.891923E+02  0.348350E+01
  vertex  0.648000E+01  0.891924E+02  0.000000E+00
  vertex  0.000000E+00  0.901999E+02  0.000000E+00
 endloop
endfacet
 endsolid FLIRIS  
```
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
