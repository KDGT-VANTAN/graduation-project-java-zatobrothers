package com.reimi.reimi_app.domain.model.profile;

public enum BodyShape {
    SLIM("スリム"),
    SLENDER("やや細め"),
    NORMAL("普通"),
    MUSCULAR("筋肉質"),
    CHUBBY("ややぽっちゃり"),
    OVERWEIGHT("太め");

    private final String label;

    BodyShape(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
