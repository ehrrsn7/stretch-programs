# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

#[=======================================================================[.rst:
FindosgSim
----------



This is part of the ``Findosg*`` suite used to find OpenSceneGraph
components.  Each component is separate and you must opt in to each
module.  You must also opt into OpenGL and OpenThreads (and Producer
if needed) as these modules won't do it for you.  This is to allow you
control over your own system piece by piece in case you need to opt
out of certain components or change the Find behavior for a particular
module (perhaps because the default :module:`FindOpenGL` module doesn't
work with your system as an example).  If you want to use a more
convenient module that includes everything, use the
:module:`FindOpenSceneGraph` instead of the ``Findosg*.cmake`` modules.

Locate osgSim This module defines:

``OSGSIM_FOUND``
  Was osgSim found?
``OSGSIM_INCLUDE_DIR``
  Where to find the headers
``OSGSIM_LIBRARIES``
  The libraries to link for osgSim (use this)
``OSGSIM_LIBRARY``
  The osgSim library
``OSGSIM_LIBRARY_DEBUG``
  The osgSim debug library

``$OSGDIR`` is an environment variable that would correspond to::

  ./configure --prefix=$OSGDIR

used in building osg.

Created by Eric Wing.
#]=======================================================================]

# Header files are presumed to be included like
# #include <osg/PositionAttitudeTransform>
# #include <osgSim/ImpostorSprite>

include(${CMAKE_CURRENT_LIST_DIR}/Findosg_functions.cmake)
OSG_FIND_PATH   (OSGSIM osgSim/ImpostorSprite)
OSG_FIND_LIBRARY(OSGSIM osgSim)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(osgSim DEFAULT_MSG
    OSGSIM_LIBRARY OSGSIM_INCLUDE_DIR)
