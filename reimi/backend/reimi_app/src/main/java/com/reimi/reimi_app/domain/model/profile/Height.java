package com.reimi.reimi_app.domain.model.profile;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;

public enum Height {
    UNDER_130(130),
    JUST_131(131),
    JUST_132(132),
    JUST_133(133),
    JUST_134(134),
    JUST_135(135),
    JUST_136(136),
    JUST_137(137),
    JUST_138(138),
    JUST_139(139),
    JUST_140(140),
    JUST_141(141),
    JUST_142(142),
    JUST_143(143),
    JUST_144(144),
    JUST_145(145),
    JUST_146(146),
    JUST_147(147),
    JUST_148(148),
    JUST_149(149),
    JUST_150(150),
    JUST_151(151),
    JUST_152(152),
    JUST_153(153),
    JUST_154(154),
    JUST_155(155),
    JUST_156(156),
    JUST_157(157),
    JUST_158(158),
    JUST_159(159),
    JUST_160(160),
    JUST_161(161),
    JUST_162(162),
    JUST_163(163),
    JUST_164(164),
    JUST_165(165),
    JUST_166(166),
    JUST_167(167),
    JUST_168(168),
    JUST_169(169),
    JUST_170(170),
    JUST_171(171),
    JUST_172(172),
    JUST_173(173),
    JUST_174(174),
    JUST_175(175),
    JUST_176(176),
    JUST_177(177),
    JUST_178(178),
    JUST_179(179),
    JUST_180(180),
    JUST_181(181),
    JUST_182(182),
    JUST_183(183),
    JUST_184(184),
    JUST_185(185),
    JUST_186(186),
    JUST_187(187),
    JUST_188(188),
    JUST_189(189),
    JUST_190(190),
    JUST_191(191),
    JUST_192(192),
    JUST_193(193),
    JUST_194(194),
    JUST_195(195),
    JUST_196(196),
    JUST_197(197),
    JUST_198(198),
    JUST_199(199),
    OVER_200(200);

    private final int value;

    Height(int value) {
        this.value = value;
    }

    @JsonValue
    public int getValue() {
        return value;
    }

    @JsonCreator
    public static Height fromValue(int value) {
        for (Height height : values()) {
            if (height.value == value) {
                return height;
            }
        }

        throw new IllegalArgumentException();
    }
}
