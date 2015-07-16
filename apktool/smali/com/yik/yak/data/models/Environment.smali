.class public Lcom/yik/yak/data/models/Environment;
.super Lcom/yik/yak/data/models/YikYakObject;
.source "SourceFile"


# instance fields
.field private mBasecampEndpoint:Ljava/lang/String;

.field private mConfigurationEndpoint:Ljava/lang/String;

.field private mImageUploadEndpoint:Ljava/lang/String;

.field private mIsCurrentEnvironment:Z

.field private mLinkEndpoint:Ljava/lang/String;

.field private mMainEndpoint:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNotificationEndpoint:Ljava/lang/String;

.field private mShortName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yik/yak/data/models/YikYakObject;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getBasecampEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mBasecampEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigurationEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mConfigurationEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mImageUploadEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mLinkEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getMainApiEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mMainEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mNotificationEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yik/yak/data/models/Environment;->mShortName:Ljava/lang/String;

    return-object v0
.end method

.method public isCurrentEnvironment()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/yik/yak/data/models/Environment;->mIsCurrentEnvironment:Z

    return v0
.end method

.method public setBasecampEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mBasecampEndpoint:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setConfigurationEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mConfigurationEndpoint:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setImageUploadEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mImageUploadEndpoint:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setIsCurrentEnvironment(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/yik/yak/data/models/Environment;->mIsCurrentEnvironment:Z

    .line 37
    return-void
.end method

.method public setLinkEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mLinkEndpoint:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setMainApiEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mMainEndpoint:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setNotificationEndpoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mNotificationEndpoint:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yik/yak/data/models/Environment;->mShortName:Ljava/lang/String;

    .line 53
    return-void
.end method
