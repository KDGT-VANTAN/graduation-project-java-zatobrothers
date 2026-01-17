package com.reimi.reimi_app.domain.model.message;

public enum MessageType {
    TEXT("テキスト"),
    IMAGE("イメージ画像"),
    STAMP("スタンプ");

    private final String label;

    MessageType(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}