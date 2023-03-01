# -*- coding:utf-8 -*-
import sys
from concurrent.futures import ProcessPoolExecutor, as_completed
from datetime import datetime
from os.path import splitext
import fontforge
import font_patcher

FAMILY = "isfit+"
FULLNAME = "isfit+"
FILENAME = "isfit-plus"
FONTFORGE = "FontForge 2.0"
ASCENT = 1650
DESCENT = 398
ENCODING = "UnicodeFull"
# ENCODING = "ISO10646-1"
UNDERLINE_POS = -250
UNDERLINE_HEIGHT = 100
STYLE_PROPERTY = {
    "weight": "Regular",
    "os2_weight": 400,
    "panose_weight": 5,
    "panose_letterform": 2,
}
COPYRIGHT = """Copyright (c) 2019-2020 Youhei SASAKI <uwabami@gfd-dennou.org>
SIL Open Font License Version 1.1 (http://scripts.sil.org/ofl)"""  # noqa

def build(version):
    print("---- create empty template fonts ----")
    prop = STYLE_PROPERTY
    dest = fontforge.font()
    dest.ascent = ASCENT
    dest.descent = DESCENT
    dest.upos = UNDERLINE_POS
    dest.uwidth = UNDERLINE_HEIGHT
    dest.familyname = FULLNAME
    dest.copyright = COPYRIGHT
    dest.encoding = ENCODING
    dest.fontname = FILENAME
    dest.fullname = FULLNAME
    dest.version = version
    dest.appendSFNTName("English (US)", "SubFamily", "Regular")
    dest.appendSFNTName(
        "English (US)",
        "UniqueID",
        " : ".join(
            [
                FONTFORGE,
                FULLNAME,
                version,
                datetime.today().strftime("%d-%m-%Y"),
            ]
        ),
    )
    dest.weight = prop["weight"]
    dest.os2_weight = prop["os2_weight"]
    dest.os2_width = 5  # Medium (w/h = 1.000)
    dest.os2_fstype = 4  # Printable Document
    dest.os2_vendor = "YS"  # me
    dest.os2_family_class = 2057  # SS Typewriter Gothic
    dest.os2_panose = (
        2,  # Latin: Text and Display
        11,  # Nomal Sans
        prop["panose_weight"],
        9,  # Monospaced
        2,  # None
        2,  # No Variation
        3,  # Straight Arms/Wedge
        prop["panose_letterform"],
        2,  # Standard/Trimmed
        7,  # Ducking/Large
    )
    # winascent & windescent is for setting the line height for Windows.
    dest.os2_winascent = ASCENT
    dest.os2_windescent = DESCENT
    # the `_add` version is for setting offsets.
    dest.os2_winascent_add = 0
    dest.os2_windescent_add = 0
    # hhea_ascent, hhea_descent is the macOS version for winascent &
    # windescent.
    dest.hhea_ascent = ASCENT
    dest.hhea_descent = -DESCENT
    dest.hhea_ascent_add = 0
    dest.hhea_descent_add = 0
    # typoascent, typodescent is generic version for above.
    dest.os2_typoascent = ASCENT
    dest.os2_typodescent = -DESCENT
    dest.os2_typoascent_add = 0
    dest.os2_typodescent_add = 0
    # linegap is for gap between lines.  The `hhea_` version is for macOS.
    dest.os2_typolinegap = 0
    dest.hhea_linegap = 0

    dest.generate("isfit-plus.ttf")
    print("---- adding icon fonts ----")
    if concurrent_execute(
            font_patcher.patch, [["isfit-plus.ttf","dists"]]):
        return 1
    return 0

def concurrent_execute(func, args):
    executor = ProcessPoolExecutor()
    futures = [executor.submit(func, *a) for a in args]
    return 1 if any([r.result() for r in as_completed(futures)]) else 0
