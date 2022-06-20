/**
 * PANDA 3D SOFTWARE
 * Copyright (c) Carnegie Mellon University.  All rights reserved.
 *
 * All use of this software is subject to the terms of the revised BSD
 * license.  You should have received a copy of this license along
 * with this source code in a file named "LICENSE."
 *
 * @file directsymbols.h
 * @author drose
 * @date 2000-02-18
 */

#ifndef DIRECTSYMBOLS_H
#define DIRECTSYMBOLS_H

/* See dtoolsymbols.h for a rant on the purpose of this file.  */

/* BUILDING_DIRECT is just a buildsystem shortcut for all of these: */
#ifdef BUILDING_DIRECT
  #define BUILDING_DIRECT_DCPARSER
  #define BUILDING_DIRECT_DEADREC
  #define BUILDING_DIRECT_DIRECTD
  #define BUILDING_DIRECT_INTERVAL
  #define BUILDING_DIRECT_MOTIONTRAIL
  #define BUILDING_DIRECT_SHOWBASE
  #define BUILDING_DIRECT_DISTRIBUTED
#endif

#ifdef BUILDING_DIRECT_DCPARSER
  #define EXPCL_DIRECT_DCPARSER EXPORT_CLASS
  #define EXPTP_DIRECT_DCPARSER EXPORT_TEMPL
#else
  #define EXPCL_DIRECT_DCPARSER IMPORT_CLASS
  #define EXPTP_DIRECT_DCPARSER IMPORT_TEMPL
#endif

#ifdef BUILDING_DIRECT_DEADREC
  #define EXPCL_DIRECT_DEADREC EXPORT_CLASS
  #define EXPTP_DIRECT_DEADREC EXPORT_TEMPL
#else
  #define EXPCL_DIRECT_DEADREC IMPORT_CLASS
  #define EXPTP_DIRECT_DEADREC IMPORT_TEMPL
#endif

#ifdef BUILDING_DIRECT_DIRECTD
  #define EXPCL_DIRECT_DIRECTD EXPORT_CLASS
  #define EXPTP_DIRECT_DIRECTD EXPORT_TEMPL
#else
  #define EXPCL_DIRECT_DIRECTD IMPORT_CLASS
  #define EXPTP_DIRECT_DIRECTD IMPORT_TEMPL
#endif

#ifdef BUILDING_DIRECT_INTERVAL
  #define EXPCL_DIRECT_INTERVAL EXPORT_CLASS
  #define EXPTP_DIRECT_INTERVAL EXPORT_TEMPL
#else
  #define EXPCL_DIRECT_INTERVAL IMPORT_CLASS
  #define EXPTP_DIRECT_INTERVAL IMPORT_TEMPL
#endif

#ifdef BUILDING_DIRECT_MOTIONTRAIL
  #define EXPCL_DIRECT_MOTIONTRAIL EXPORT_CLASS
  #define EXPTP_DIRECT_MOTIONTRAIL EXPORT_TEMPL
#else
  #define EXPCL_DIRECT_MOTIONTRAIL IMPORT_CLASS
  #define EXPTP_DIRECT_MOTIONTRAIL IMPORT_TEMPL
#endif

#ifdef BUILDING_DIRECT_SHOWBASE
  #define EXPCL_DIRECT_SHOWBASE EXPORT_CLASS
  #define EXPTP_DIRECT_SHOWBASE EXPORT_TEMPL
#else
  #define EXPCL_DIRECT_SHOWBASE IMPORT_CLASS
  #define EXPTP_DIRECT_SHOWBASE IMPORT_TEMPL
#endif

#ifdef BUILDING_DIRECT_DISTRIBUTED
  #define EXPCL_DIRECT_DISTRIBUTED EXPORT_CLASS
  #define EXPTP_DIRECT_DISTRIBUTED EXPORT_TEMPL
#else
  #define EXPCL_DIRECT_DISTRIBUTED IMPORT_CLASS
  #define EXPTP_DIRECT_DISTRIBUTED IMPORT_TEMPL
#endif

#endif