# -*- coding=utf8 -*-
import errno
import os

import fontforge
import psMat

# Define the character ranges
# Symbol font ranges
# @see https://github.com/ryanoasis/nerd-fonts/issues/365

PATCH_SET = [
    {
        "name": "Seti-UI + Custom",
        "filename": "set-ui_custom.otf",
        "sym_start": 0xE4FA,
        "sym_end": 0xE52E,
        "src_start": 0xE5FA,
    },
    {
        "name": "Devicons",
        "filename": "devicons.ttf",
        "sym_start": 0xE600,
        "sym_end": 0xE6C5,
        "src_start": 0xE700,
    },
    {
        "name": "Powerline Extra Symbols",
        "filename": "PowerlineExtraSymbols.otf",
        "sym_start": 0xE0A0,
        "sym_end": 0xE0D4,
        "src_start": None,
    },
#    {
#        "name": "Pomicons",
#        "filename": "Pomicons.otf",
#        "sym_start": 0xE000,
#        "sym_end": 0xE00A,
#        "src_start": None,
#    },
    {
        "name": "Font Awesome",
        "filename": "FontAwesome.otf",
        "sym_start": 0xF000,
        "sym_end": 0xF2E0,
        "src_start": None,
    },  # Maximize
    {
        "name": "Font Awesome Extension",
        "filename": "font-awesome-extension.ttf",
        "sym_start": 0xE000,
        "sym_end": 0xE0A9,
        "src_start": 0xE200,
    },
    {
        "name": "Material",
        "filename": "materialdesignicons-webfont.ttf",
        "sym_start": 0xF0001,
        "sym_end": 0xF0400,
        "src_start": 0xF500,
    },
    {
        "name": "Material",
        "filename": "materialdesignicons-webfont.ttf",
        "sym_start": 0xF0401,
        "sym_end": 0xF0848,
        "src_start": 0xE800,
    },
#     {
#         "name": "Material",
#         "filename": "materialdesignicons-webfont.ttf",
#         "sym_start": 0xF849,
#         "sym_end": 0xFFFF,
#         "src_start": 0xF0311,
#     },
#     {
#         "name": "Material",
#         "filename": "materialdesignicons-webfont.ttf",
#         "sym_start": 0xF0000,
#         "sym_end": 0xF0310,
#         "src_start": 0xF0000,
#     },
    {
        "name": "Font Linux",
        "filename": "font-logos.ttf",
        "sym_start": 0xF100,
        "sym_end": 0xF11C,
        "src_start": 0xF300,
    },
    {
        "name": "Octicons",
        "filename": "octicons.ttf",
        "sym_start": 0x2665,
        "sym_end": 0x2665,
        "src_start": None,
    },  # Heart
    {
        "name": "Octicons",
        "filename": "octicons.ttf",
        "sym_start": 0x26A1,
        "sym_end": 0x26A1,
        "src_start": None,
    },  # Zap
    {
        "name": "Octicons",
        "filename": "octicons.ttf",
        "sym_start": 0xF000,
        "sym_end": 0xF0E8,
        "src_start": 0xF400,
    },
    {
        "name": "Octicons",
        "filename": "octicons.ttf",
        "sym_start": 0xF101,
        "sym_end": 0xF105,
        "src_start": 0xF501,
    },
    {
        "name": "Octicons",
        "filename": "octicons.ttf",
        "sym_start": 0xF27C,
        "sym_end": 0xF27C,
        "src_start": 0xF4A9,
    },  # Desktop
    {
        "name": "Weather Icons",
        "filename": "weathericons.ttf",
        "sym_start": 0xF000,
        "sym_end": 0xF0EB,
        "src_start": 0xE300,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2a,
        "sym_end": 0x2a,
       "src_start": 0xec48,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2f,
        "sym_end": 0x2f,
       "src_start": 0xec49,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x41,
        "sym_end": 0x41,
       "src_start": 0xec4a,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x45,
        "sym_end": 0x45,
       "src_start": 0xec4b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x47,
        "sym_end": 0x47,
       "src_start": 0xec4c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x4b,
        "sym_end": 0x4b,
       "src_start": 0xec4d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x4c,
        "sym_end": 0x4c,
       "src_start": 0xec4e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x4d,
        "sym_end": 0x4d,
       "src_start": 0xec4f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x50,
        "sym_end": 0x50,
       "src_start": 0xec50,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x52,
        "sym_end": 0x52,
       "src_start": 0xec51,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x53,
        "sym_end": 0x53,
       "src_start": 0xec52,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x54,
        "sym_end": 0x54,
       "src_start": 0xec53,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x56,
        "sym_end": 0x56,
       "src_start": 0xec54,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x58,
        "sym_end": 0x58,
       "src_start": 0xec55,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x59,
        "sym_end": 0x59,
       "src_start": 0xec56,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x61,
        "sym_end": 0x61,
       "src_start": 0xec57,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x62,
        "sym_end": 0x62,
       "src_start": 0xec58,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x63,
        "sym_end": 0x63,
       "src_start": 0xec59,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x6b,
        "sym_end": 0x6b,
       "src_start": 0xec5a,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x6e,
        "sym_end": 0x6e,
       "src_start": 0xec5b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x73,
        "sym_end": 0x73,
       "src_start": 0xec5c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x74,
        "sym_end": 0x74,
       "src_start": 0xec5d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x75,
        "sym_end": 0x75,
       "src_start": 0xec5e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x76,
        "sym_end": 0x76,
       "src_start": 0xec5f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x79,
        "sym_end": 0x79,
       "src_start": 0xec60,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x7a,
        "sym_end": 0x7a,
       "src_start": 0xec61,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xa2,
        "sym_end": 0xa2,
       "src_start": 0xec62,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xa7,
        "sym_end": 0xa7,
       "src_start": 0xec63,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe6,
        "sym_end": 0xe6,
       "src_start": 0xec64,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1a3,
        "sym_end": 0x1a3,
       "src_start": 0xec65,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1b5,
        "sym_end": 0x1b5,
       "src_start": 0xec66,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1b6,
        "sym_end": 0x1b6,
       "src_start": 0xec67,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2a6,
        "sym_end": 0x2a6,
       "src_start": 0xec68,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x3bb,
        "sym_end": 0x3bb,
       "src_start": 0xec69,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x42f,
        "sym_end": 0x42f,
       "src_start": 0xec6a,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x203c,
        "sym_end": 0x203c,
       "src_start": 0xec6b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x211b,
        "sym_end": 0x211b,
       "src_start": 0xec6c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2122,
        "sym_end": 0x2122,
       "src_start": 0xec6d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2162,
        "sym_end": 0x2162,
       "src_start": 0xec6e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2169,
        "sym_end": 0x2169,
       "src_start": 0xec6f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x21b9,
        "sym_end": 0x21b9,
       "src_start": 0xec70,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x223f,
        "sym_end": 0x223f,
       "src_start": 0xec71,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2295,
        "sym_end": 0x2295,
       "src_start": 0xec72,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x22c0,
        "sym_end": 0x22c0,
       "src_start": 0xec73,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2318,
        "sym_end": 0x2318,
       "src_start": 0xec74,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x231f,
        "sym_end": 0x231f,
       "src_start": 0xec75,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x234b,
        "sym_end": 0x234b,
       "src_start": 0xec76,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x237a,
        "sym_end": 0x237a,
       "src_start": 0xec77,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2388,
        "sym_end": 0x2388,
       "src_start": 0xec78,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2398,
        "sym_end": 0x2398,
       "src_start": 0xec79,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x23e3,
        "sym_end": 0x23e3,
       "src_start": 0xec7a,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x23ff,
        "sym_end": 0x23ff,
       "src_start": 0xec7b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2442,
        "sym_end": 0x2442,
       "src_start": 0xec7c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2476,
        "sym_end": 0x2476,
       "src_start": 0xec7d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2478,
        "sym_end": 0x2478,
       "src_start": 0xec7e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24b6,
        "sym_end": 0x24b6,
       "src_start": 0xec7f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24bc,
        "sym_end": 0x24bc,
       "src_start": 0xec80,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24bd,
        "sym_end": 0x24bd,
       "src_start": 0xec81,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24c2,
        "sym_end": 0x24c2,
       "src_start": 0xec82,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24c3,
        "sym_end": 0x24c3,
       "src_start": 0xec83,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24c7,
        "sym_end": 0x24c7,
       "src_start": 0xec84,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24cb,
        "sym_end": 0x24cb,
       "src_start": 0xec85,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24d0,
        "sym_end": 0x24d0,
       "src_start": 0xec86,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x24d4,
        "sym_end": 0x24d4,
       "src_start": 0xec87,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2591,
        "sym_end": 0x2591,
       "src_start": 0xec88,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x25b2,
        "sym_end": 0x25b2,
       "src_start": 0xec89,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2601,
        "sym_end": 0x2601,
       "src_start": 0xec8a,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2602,
        "sym_end": 0x2602,
       "src_start": 0xec8b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2620,
        "sym_end": 0x2620,
       "src_start": 0xec8c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2624,
        "sym_end": 0x2624,
       "src_start": 0xec8d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x262f,
        "sym_end": 0x262f,
       "src_start": 0xec8e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2630,
        "sym_end": 0x2630,
       "src_start": 0xec8f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x263f,
        "sym_end": 0x263f,
       "src_start": 0xec90,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2644,
        "sym_end": 0x2644,
       "src_start": 0xec91,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2649,
        "sym_end": 0x2649,
       "src_start": 0xec92,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x265f,
        "sym_end": 0x265f,
       "src_start": 0xec93,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2668,
        "sym_end": 0x2668,
       "src_start": 0xec94,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2695,
        "sym_end": 0x2695,
       "src_start": 0xec95,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2696,
        "sym_end": 0x2696,
       "src_start": 0xec96,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x26a1,
        "sym_end": 0x26a1,
       "src_start": 0xec97,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x26bd,
        "sym_end": 0x26bd,
       "src_start": 0xec98,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x26c5,
        "sym_end": 0x26c5,
       "src_start": 0xec99,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x26ec,
        "sym_end": 0x26ec,
       "src_start": 0xec9a,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x26ef,
        "sym_end": 0x26ef,
       "src_start": 0xec9b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x26f5,
        "sym_end": 0x26f5,
       "src_start": 0xec9c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x26fe,
        "sym_end": 0x26fe,
       "src_start": 0xec9d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x26ff,
        "sym_end": 0x26ff,
       "src_start": 0xec9e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2708,
        "sym_end": 0x2708,
       "src_start": 0xec9f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2712,
        "sym_end": 0x2712,
       "src_start": 0xeca0,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2714,
        "sym_end": 0x2714,
       "src_start": 0xeca1,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x272a,
        "sym_end": 0x272a,
       "src_start": 0xeca2,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x272b,
        "sym_end": 0x272b,
       "src_start": 0xeca3,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x272c,
        "sym_end": 0x272c,
       "src_start": 0xeca4,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2778,
        "sym_end": 0x2778,
       "src_start": 0xeca5,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2933,
        "sym_end": 0x2933,
       "src_start": 0xeca6,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x293e,
        "sym_end": 0x293e,
       "src_start": 0xeca7,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x29cb,
        "sym_end": 0x29cb,
       "src_start": 0xeca8,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x29cf,
        "sym_end": 0x29cf,
       "src_start": 0xeca9,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x29d9,
        "sym_end": 0x29d9,
       "src_start": 0xecaa,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2a74,
        "sym_end": 0x2a74,
       "src_start": 0xecab,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2b94,
        "sym_end": 0x2b94,
       "src_start": 0xecac,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x2e19,
        "sym_end": 0x2e19,
       "src_start": 0xecad,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x301c,
        "sym_end": 0x301c,
       "src_start": 0xecae,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x30ab,
        "sym_end": 0x30ab,
       "src_start": 0xecaf,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x3373,
        "sym_end": 0x3373,
       "src_start": 0xecb0,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x33ab,
        "sym_end": 0x33ab,
       "src_start": 0xecb1,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x33cb,
        "sym_end": 0x33cb,
       "src_start": 0xecb2,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x33dc,
        "sym_end": 0x33dc,
       "src_start": 0xecb3,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x8a00,
        "sym_end": 0x8a00,
       "src_start": 0xecb4,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x92f8,
        "sym_end": 0x92f8,
       "src_start": 0xecb5,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xa5ea,
        "sym_end": 0xa5ea,
       "src_start": 0xecb6,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe600,
        "sym_end": 0xe600,
       "src_start": 0xecb7,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe601,
        "sym_end": 0xe601,
       "src_start": 0xecb8,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe60f,
        "sym_end": 0xe60f,
       "src_start": 0xecb9,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe610,
        "sym_end": 0xe610,
       "src_start": 0xecba,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe611,
        "sym_end": 0xe611,
       "src_start": 0xecbb,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe61b,
        "sym_end": 0xe61b,
       "src_start": 0xecbc,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe624,
        "sym_end": 0xe624,
       "src_start": 0xecbd,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe667,
        "sym_end": 0xe667,
       "src_start": 0xecbe,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe679,
        "sym_end": 0xe679,
       "src_start": 0xecbf,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe683,
        "sym_end": 0xe683,
       "src_start": 0xecc0,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe6a5,
        "sym_end": 0xe6a5,
       "src_start": 0xecc1,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe6b4,
        "sym_end": 0xe6b4,
       "src_start": 0xecc2,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe6b8,
        "sym_end": 0xe6b8,
       "src_start": 0xecc3,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe800,
        "sym_end": 0xe800,
       "src_start": 0xecc4,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xe900,
        "sym_end": 0xebb2,
       "src_start": 0xecc5,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xebb4,
        "sym_end": 0xebb4,
       "src_start": 0xef78,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xebb7,
        "sym_end": 0xebb7,
       "src_start": 0xef79,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf012,
        "sym_end": 0xf012,
       "src_start": 0xef7a,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf015,
        "sym_end": 0xf015,
       "src_start": 0xef7b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf01f,
        "sym_end": 0xf01f,
       "src_start": 0xef7c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf02b,
        "sym_end": 0xf02b,
       "src_start": 0xef7d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf057,
        "sym_end": 0xf057,
       "src_start": 0xef7e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf07c,
        "sym_end": 0xf07c,
       "src_start": 0xef7f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf07d,
        "sym_end": 0xf07d,
       "src_start": 0xef80,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf0c3,
        "sym_end": 0xf0c3,
       "src_start": 0xef81,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf0c8,
        "sym_end": 0xf0c8,
       "src_start": 0xef82,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf0c9,
        "sym_end": 0xf0c9,
       "src_start": 0xef83,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf100,
        "sym_end": 0xf106,
       "src_start": 0xef84,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf147,
        "sym_end": 0xf147,
       "src_start": 0xef8b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf14b,
        "sym_end": 0xf14b,
       "src_start": 0xef8c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf15b,
        "sym_end": 0xf15b,
       "src_start": 0xef8d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf17b,
        "sym_end": 0xf17b,
       "src_start": 0xef8e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xfb00,
        "sym_end": 0xfb00,
       "src_start": 0xef8f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x101ef,
        "sym_end": 0x101ef,
       "src_start": 0xef90,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1315a,
        "sym_end": 0x1315a,
       "src_start": 0xef91,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x13167,
        "sym_end": 0x13168,
       "src_start": 0xef92,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1316a,
        "sym_end": 0x1316b,
       "src_start": 0xef94,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1d235,
        "sym_end": 0x1d235,
       "src_start": 0xef96,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1d419,
        "sym_end": 0x1d419,
       "src_start": 0xef97,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1d4b1,
        "sym_end": 0x1d4b1,
       "src_start": 0xef98,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1d4bb,
        "sym_end": 0x1d4bb,
       "src_start": 0xef99,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1d5a6,
        "sym_end": 0x1d5a6,
       "src_start": 0xef9a,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1d5ac,
        "sym_end": 0x1d5ac,
       "src_start": 0xef9b,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1d5e6,
        "sym_end": 0x1d5e6,
       "src_start": 0xef9c,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1d6cc,
        "sym_end": 0x1d6cc,
       "src_start": 0xef9d,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f110,
        "sym_end": 0x1f110,
       "src_start": 0xef9e,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f127,
        "sym_end": 0x1f127,
       "src_start": 0xef9f,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f135,
        "sym_end": 0x1f135,
       "src_start": 0xefa0,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f143,
        "sym_end": 0x1f143,
       "src_start": 0xefa1,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f144,
        "sym_end": 0x1f144,
       "src_start": 0xefa2,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f18b,
        "sym_end": 0x1f18b,
       "src_start": 0xefa3,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f191,
        "sym_end": 0x1f191,
       "src_start": 0xefa4,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f300,
        "sym_end": 0x1f300,
       "src_start": 0xefa5,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f30d,
        "sym_end": 0x1f30d,
       "src_start": 0xefa6,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f32d,
        "sym_end": 0x1f32d,
       "src_start": 0xefa7,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f366,
        "sym_end": 0x1f366,
       "src_start": 0xefa8,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f36b,
        "sym_end": 0x1f36b,
       "src_start": 0xefa9,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f377,
        "sym_end": 0x1f377,
       "src_start": 0xefaa,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f37a,
        "sym_end": 0x1f37a,
       "src_start": 0xefab,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f381,
        "sym_end": 0x1f381,
       "src_start": 0xefac,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f3c1,
        "sym_end": 0x1f3c1,
       "src_start": 0xefad,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f3d4,
        "sym_end": 0x1f3d4,
       "src_start": 0xefae,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f400,
        "sym_end": 0x1f400,
       "src_start": 0xefaf,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f402,
        "sym_end": 0x1f402,
       "src_start": 0xefb0,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f406,
        "sym_end": 0x1f406,
       "src_start": 0xefb1,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f41f,
        "sym_end": 0x1f41f,
       "src_start": 0xefb2,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f420,
        "sym_end": 0x1f420,
       "src_start": 0xefb3,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f421,
        "sym_end": 0x1f421,
       "src_start": 0xefb4,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f426,
        "sym_end": 0x1f426,
       "src_start": 0xefb5,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f427,
        "sym_end": 0x1f427,
       "src_start": 0xefb6,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f435,
        "sym_end": 0x1f435,
       "src_start": 0xefb7,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f436,
        "sym_end": 0x1f436,
       "src_start": 0xefb8,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f43a,
        "sym_end": 0x1f43a,
       "src_start": 0xefb9,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f43d,
        "sym_end": 0x1f43d,
       "src_start": 0xefba,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f441,
        "sym_end": 0x1f441,
       "src_start": 0xefbb,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f44a,
        "sym_end": 0x1f44a,
       "src_start": 0xefbc,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f44c,
        "sym_end": 0x1f44c,
       "src_start": 0xefbd,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f480,
        "sym_end": 0x1f480,
       "src_start": 0xefbe,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f485,
        "sym_end": 0x1f485,
       "src_start": 0xefbf,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f48d,
        "sym_end": 0x1f48d,
       "src_start": 0xefc0,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f48e,
        "sym_end": 0x1f48e,
       "src_start": 0xefc1,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f4a0,
        "sym_end": 0x1f4a0,
       "src_start": 0xefc2,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f4a7,
        "sym_end": 0x1f4a7,
       "src_start": 0xefc3,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f4ae,
        "sym_end": 0x1f4ae,
       "src_start": 0xefc4,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f4c3,
        "sym_end": 0x1f4c3,
       "src_start": 0xefc5,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f4c8,
        "sym_end": 0x1f4c8,
       "src_start": 0xefc6,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f4c9,
        "sym_end": 0x1f4c9,
       "src_start": 0xefc7,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f4dc,
        "sym_end": 0x1f4dc,
       "src_start": 0xefc8,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f50d,
        "sym_end": 0x1f50d,
       "src_start": 0xefc9,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f512,
        "sym_end": 0x1f512,
       "src_start": 0xefca,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f54a,
        "sym_end": 0x1f54a,
       "src_start": 0xefcb,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f54c,
        "sym_end": 0x1f54c,
       "src_start": 0xefcc,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f558,
        "sym_end": 0x1f558,
       "src_start": 0xefcd,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f58b,
        "sym_end": 0x1f58b,
       "src_start": 0xefce,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f5cc,
        "sym_end": 0x1f5cc,
       "src_start": 0xefcf,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f5ff,
        "sym_end": 0x1f5ff,
       "src_start": 0xefd0,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f63a,
        "sym_end": 0x1f63a,
       "src_start": 0xefd1,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f680,
        "sym_end": 0x1f680,
       "src_start": 0xefd2,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f704,
        "sym_end": 0x1f704,
       "src_start": 0xefd3,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f764,
        "sym_end": 0x1f764,
       "src_start": 0xefd4,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f7cd,
        "sym_end": 0x1f7cd,
       "src_start": 0xefd5,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f916,
        "sym_end": 0x1f916,
       "src_start": 0xefd6,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f985,
        "sym_end": 0x1f985,
       "src_start": 0xefd7,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0x1f998,
        "sym_end": 0x1f998,
       "src_start": 0xefd8,
    },
    {
        "name": "File Icons",
        "filename": "file-icons.ttf",
        "sym_start": 0xf146b,
        "sym_end": 0xf146b,
       "src_start": 0xefd9,
    },
    {
       "name": "All the Icons",
       "filename": "all-the-icons.ttf",
       "sym_start": 0xE903,
       "sym_end": 0xE941,
       "src_start": 0xE0E0,
    },
]

def patch(in_file, out_dir):
    font = fontforge.open(in_file)
    _patch(font)
    try:
        os.makedirs(out_dir)
    except OSError as exception:
        if exception.errno != errno.EEXIST:
            raise
    out_file = os.path.join(out_dir, in_file)
    print("Generated " + out_file)
    font.generate(out_file)
    return 0


def _patch(font):
    # Prevent opening and closing the fontforge font. Makes things faster when
    # patching multiple ranges using the same symbol font.
    previous_symbol_filename = ""
    symfont = None

    for info in PATCH_SET:
        if previous_symbol_filename != info["filename"]:
            # We have a new symbol font, so close the previous one if it exists
            if symfont:
                symfont.close()
                symfont = None
            symfont = fontforge.open("glyphs/" + info["filename"])
            # Match the symbol font size to the source font size
            symfont.em = font.em
            previous_symbol_filename = info["filename"]

        _copy_glyphs(font, symfont, info)
    if symfont:
        symfont.close()


def _transform_sym(symfont, info):

    x_ratio = 1.0
    y_ratio = 1.0
    x_diff = 0
    y_diff = 0

    if info["name"] == "Seti-UI + Custom":
        x_ratio = 1.1
        y_ratio = 1.1
        x_diff = -100
        y_diff = -450

    elif info["name"] == "Devicons":
        x_ratio = 1.05
        y_ratio = 1.05
        x_diff = -100
        y_diff = -250

    elif info["name"] == "Powerline Extra Symbols":
        x_ratio = 0.95
        y_ratio = 0.88
        x_diff = 0
        y_diff = -30

    elif info["name"] == "Font Linux":
        y_diff = -120

    elif info["name"] == "Font Awesome Extension":
        y_diff = -400

    # elif info["name"] == "Pomicons":
    #     x_ratio = 1.2
    #     y_ratio = 1.2
    #     x_diff = -200
    #     y_diff = -300

    elif info["name"] == "Octicons":
        x_ratio = 0.95
        y_ratio = 0.95
        x_diff = 30
        y_diff = -100

    elif info["name"] == "Material":
        x_ratio = 1.1
        y_ratio = 1.1
        x_diff = -50
        y_diff = -250

    elif info["name"] == "Devicons":
        x_ratio = 1.05
        y_ratio = 1.05
        x_diff = -100
        y_diff = -250

    elif info["name"] == "File Icons":
        x_ratio = 0.85
        y_ratio = 0.85
        x_diff = -100
        y_diff = -250

    elif info["name"] == "All the Icons":
        x_ratio = 0.9
        y_ratio = 0.9
        x_diff = -100
        y_diff = -100

    scale = psMat.scale(x_ratio, y_ratio)
    translate = psMat.translate(x_diff, y_diff)
    transform = psMat.compose(scale, translate)
    symfont.transform(transform)

def _copy_glyphs(font, symfont, info):

    for encoding in range(info["sym_start"], info["sym_end"] + 1):
        src_encoding = encoding
        if info["src_start"]:
            src_encoding += info["src_start"] - info["sym_start"]
        symfont.selection.select(encoding)
        _transform_sym(symfont, info)
        symfont.copy()
        font.selection.select(src_encoding)
        font.paste()
    return
