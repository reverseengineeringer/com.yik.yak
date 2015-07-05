.class public Lcom/yik/yak/data/models/Environment;
.super Lcom/yik/yak/data/models/YikYakObject;
.source "SourceFile"


# instance fields
.field private mBasecampEndpoint:Ljava/lang/String;

.field private mImageUploadEndpoint:Ljava/lang/String;

.field private mIsCurrentEnvironment:Z

.field private mMainEndpoint:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNotificationEndpoint:Ljava/lang/String;

.field private mShortName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yik/yak/data/models/YikYakObject;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public getBasecampEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mBasecampEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mImageUploadEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getMainApiEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mMainEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mNotificationEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentEnvironment()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Environment;->mIsCurrentEnvironment:Z

    return v0
.end method

.method public setBasecampEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mBasecampEndpoint:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setImageUploadEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mImageUploadEndpoint:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setIsCurrentEnvironment(Z)V
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/yik/yak/data/models/Environment;->mIsCurrentEnvironment:Z

    .line 35
    return-void
.end method

.method public setMainApiEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mMainEndpoint:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNotificationEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mNotificationEndpoint:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mShortName:Ljava/lang/String;

    .line 51
    return-void
.end method
