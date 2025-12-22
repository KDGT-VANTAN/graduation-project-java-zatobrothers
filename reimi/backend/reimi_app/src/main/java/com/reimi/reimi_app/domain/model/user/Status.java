package com.reimi.reimi_app.domain.model.user;

public enum Status {
    ACTIVE("通常利用中"),
    WITHDRAWN("自主退会"),
    BANNED("強制退会"),
    SUSPENDED("一時停止");

    private final String label;

    Status(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
