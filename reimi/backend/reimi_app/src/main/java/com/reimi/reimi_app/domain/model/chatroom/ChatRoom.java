package com.reimi.reimi_app.domain.model.chatroom;

import com.reimi.reimi_app.domain.model.match.MatchId;

public class ChatRoom {

    private final ChatRoomId id;
    private final MatchId matchId;

    private ChatRoom(
        ChatRoomId id,
        MatchId matchId
    ) {
        this.id = id;
        this.matchId = matchId;
    }

    public static ChatRoom create(MatchId matchId) {
        ChatRoomId chatRoomId = ChatRoomId.generate();
        return new ChatRoom(
            chatRoomId,
            matchId
        );
    }
    public ChatRoomId getId() { return id; }
    public MatchId getMatchId() { return matchId; }
}
