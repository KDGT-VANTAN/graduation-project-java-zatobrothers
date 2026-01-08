package com.reimi.reimi_app.domain.model.profile;

public enum CommunicationStyle {
    CALL("電話派"),
    MESSAGE("メッセージ派"),
    IN_PERSON("対面派");

    private final String label;

    CommunicationStyle(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}