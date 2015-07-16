.class public Lcom/yik/yak/ui/activity/YakDetailActivity;
.super Lcom/yik/yak/ui/activity/FragmentContainerActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/FragmentContainerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "canSubmit"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 27
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "canVote"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 28
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "canReply"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 29
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "canReport"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 30
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 31
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "caller"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "replyId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v6}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const-string v6, "MainFeed"

    .line 39
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/YakDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v10, "yak"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v1, LAv;

    invoke-direct {v1}, LAv;-><init>()V

    invoke-virtual {v1, v0}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    move v1, v9

    .line 45
    invoke-static/range {v0 .. v7}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;ZZZZZLjava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/CommentFragment;

    move-result-object v0

    .line 46
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v8

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "Yak"

    return-object v0
.end method
