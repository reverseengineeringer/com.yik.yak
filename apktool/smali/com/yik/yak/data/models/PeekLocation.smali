.class public Lcom/yik/yak/data/models/PeekLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public canReply:Z

.field public canReport:Z

.field public canSubmit:Z

.field public canSubmitLinks:Z

.field public canSubmitPhotos:Z

.field public canVote:Z

.field public isCustomPeek:Z

.field public isDefault:Z

.field public isNew:Z

.field public isUnread:Z

.field public latitude:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public peekID:Ljava/lang/String;

.field public section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    .line 17
    iput-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->isNew:Z

    .line 18
    iput-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    .line 25
    iput-boolean v2, p0, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    .line 27
    iput-object p1, p0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    .line 31
    if-ne p3, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yik/yak/data/models/PeekLocation;->canSubmit:Z

    .line 32
    if-ne p4, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitPhotos:Z

    .line 33
    if-ne p5, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitLinks:Z

    .line 34
    if-ne p7, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/yik/yak/data/models/PeekLocation;->canVote:Z

    .line 35
    if-ne p8, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/yik/yak/data/models/PeekLocation;->canReply:Z

    .line 36
    if-ne p9, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->canReport:Z

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    :cond_1
    move v0, v2

    .line 32
    goto :goto_1

    :cond_2
    move v0, v2

    .line 33
    goto :goto_2

    :cond_3
    move v0, v2

    .line 34
    goto :goto_3

    :cond_4
    move v0, v2

    .line 35
    goto :goto_4

    :cond_5
    move v1, v2

    .line 36
    goto :goto_5
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 10

    .prologue
    .line 21
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/yik/yak/data/models/PeekLocation;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;III)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    .line 17
    iput-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->isNew:Z

    .line 18
    iput-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->isUnread:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/data/models/PeekLocation;->isCustomPeek:Z

    .line 44
    iput-object p1, p0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/yik/yak/data/models/PeekLocation;->latitude:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/yik/yak/data/models/PeekLocation;->longitude:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/yik/yak/data/models/PeekLocation;->peekID:Ljava/lang/String;

    .line 49
    iput-boolean p6, p0, Lcom/yik/yak/data/models/PeekLocation;->isDefault:Z

    .line 51
    iput-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->canSubmit:Z

    .line 52
    iput-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->canVote:Z

    .line 53
    iput-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->canReply:Z

    .line 54
    iput-boolean v1, p0, Lcom/yik/yak/data/models/PeekLocation;->canReport:Z

    .line 56
    return-void
.end method


# virtual methods
.method public isSectionHeader()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    iget-object v1, p0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
