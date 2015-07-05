.class public Lcom/yik/yak/ui/fragment/CommentFragment;
.super LDf;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/YikYakObject;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field protected i:Landroid/os/Bundle;

.field protected j:Ljava/lang/String;

.field public k:Z

.field public l:Lcom/yik/yak/data/models/Yak;

.field protected m:Lcom/yik/yak/data/models/Yak;

.field protected mCommentFooter:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d015a
    .end annotation
.end field

.field public mReplyField:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d015c
    .end annotation
.end field

.field protected mSendButton:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d015b
    .end annotation
.end field

.field protected n:LAq;

.field protected o:Lcom/yik/yak/data/models/YakkerLocation;

.field public p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

.field public q:Landroid/os/Handler;

.field public r:Lcom/yik/yak/ui/view/RefreshListView;

.field private final s:I

.field private t:Landroid/view/View;

.field private u:Landroid/content/Context;

.field private v:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, LDf;-><init>()V

    .line 85
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    .line 88
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Z

    .line 89
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->d:Z

    .line 90
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    .line 91
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    .line 92
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 93
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 94
    iput-object v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    .line 95
    const-string v0, "MainFeed"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 96
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->k:Z

    .line 103
    iput-object v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:LAq;

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/yik/yak/data/models/Yak;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/YakDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v1, "canSubmit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const-string v1, "canVote"

    iget-boolean v2, p2, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    const-string v1, "canReply"

    iget-boolean v2, p2, Lcom/yik/yak/data/models/Yak;->CanReply:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    const-string v1, "canReport"

    iget-boolean v2, p2, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    :try_start_0
    const-string v1, "yak"

    new-instance v2, LAj;

    invoke-direct {v2}, LAj;-><init>()V

    invoke-virtual {v2, p2}, LAj;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    if-eqz p3, :cond_0

    .line 159
    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    :cond_0
    const-string v1, "caller"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/yik/yak/data/models/Yak;ZZZZZLjava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/CommentFragment;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;-><init>()V

    .line 131
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string v2, "canSubmit"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    const-string v2, "canVote"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string v2, "canReply"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string v2, "canReport"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string v2, "caller"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "isBasecamp"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v2, "replyId"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 140
    invoke-direct {v0, p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->d(Lcom/yik/yak/data/models/Yak;)V

    .line 141
    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1037
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1038
    if-nez p2, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    const-string v0, "KEY_SHOULD_BLOCK_YAKKER"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1043
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 1045
    :cond_2
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    const-string v1, "title"

    const-string v2, "Are you sure?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "message"

    const-string v2, "You\'re about to banish the author of this yak from your feed for good. This can\'t be undone, so proceed wisely!"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v1, "okText"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v1, "cancelText"

    const-string v2, "CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const/16 v1, 0x1b60

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 382
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 597
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 598
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 601
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 602
    const-string v0, "messageID"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    if-eqz p1, :cond_0

    .line 605
    const-string v0, "commentID"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_0
    const-string v0, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v0, "lat"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v0, "long"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    if-nez p3, :cond_1

    invoke-static {p5}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    const-string v0, "reason"

    invoke-virtual {v1, v0, p5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_1
    if-eqz p4, :cond_2

    .line 617
    const-string v0, "block"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    :cond_2
    const-string v2, "bc"

    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->k:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-virtual {v0}, LAw;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-static {v0, p2, v1, v2}, LzY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 628
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 632
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 633
    new-instance v1, LDE;

    invoke-direct {v1, p0, p3, p1, p4}, LDE;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;ZLcom/yik/yak/data/models/Yak;Z)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    .line 688
    return-void

    .line 619
    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 354
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 355
    new-instance v1, LDy;

    invoke-direct {v1, p0, p1}, LDy;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZLjava/lang/String;)V

    .line 594
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Yak;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 186
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    const-string v2, "shareThreshold"

    const-string v3, "shareThreshold"

    invoke-virtual {v1, v2, v3, v5}, LAw;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "shareThreshold"

    const-string v2, "message"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080164

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080169

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v0, "okText"

    const-string v2, "OK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v0, "okOnly"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivity(Landroid/content/Intent;)V

    .line 214
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:LAq;

    invoke-virtual {v1}, LAq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    const-string v2, "shareThreshold"

    const-string v3, "famousThreshold"

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v3, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 199
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/yik/yak/ui/activity/FamousActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    :try_start_0
    const-string v0, "yak"

    new-instance v2, LAj;

    invoke-direct {v2}, LAj;-><init>()V

    invoke-virtual {v2, p1}, LAj;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_1
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 210
    :cond_1
    new-instance v0, LGH;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LGH;-><init>(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, LGH;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f080130

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 258
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 259
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 260
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->g()V

    move v0, v1

    .line 341
    :goto_0
    return v0

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "You must enter a comment first."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    move v0, v1

    .line 267
    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 270
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->g()V

    .line 271
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 272
    const-string v0, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v0, "lat"

    iget-object v4, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v4}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v0, "long"

    iget-object v4, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v4}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v0, "messageID"

    iget-object v4, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v4, v4, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "comment"

    invoke-virtual {v3, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "bypassedThreatPopup"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 280
    const-string v4, "bc"

    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_2
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-virtual {v0}, LAw;->f()Ljava/lang/String;

    move-result-object v0

    const-string v4, "postComment"

    iget-object v5, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-static {v0, v4, v3, v5}, LzY;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v4

    .line 289
    const-string v0, "RequestBody:body"

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {p0, v3}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 291
    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v1

    invoke-static {v1, v0}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v0

    .line 293
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Lxw;)Lxv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 298
    invoke-static {v2}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 299
    new-instance v1, LDv;

    invoke-direct {v1, p0}, LDv;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    move v0, v2

    .line 341
    goto/16 :goto_0

    .line 280
    :cond_3
    const-string v0, "0"

    goto :goto_1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 385
    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 386
    const-string v0, "KEY_SHOULD_BLOCK_YAKKER"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 389
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_0

    .line 390
    const-string v2, "reportComment"

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "message"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "okText"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "okOnly"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const/16 v1, 0x1b5e

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 403
    return-void

    .line 392
    :cond_0
    const-string v2, "reportMessage"

    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->e()V

    return-void
.end method

.method private b(Lcom/yik/yak/data/models/Yak;)Z
    .locals 4

    .prologue
    .line 218
    const-string v0, "Are you sure you want to delete this Yak?"

    .line 219
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    const-string v2, "title"

    const-string v3, "DELETE YAK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v0, "okText"

    const-string v2, "YES"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "cancelText"

    const-string v2, "NO"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    .line 227
    if-nez p1, :cond_0

    .line 228
    const/16 v0, 0x1b59

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 233
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    const/16 v0, 0x1b5b

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 177
    const/4 v1, 0x2

    invoke-static {v1}, LzQ;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    const-string v2, "threatWords"

    const-string v3, "alwaysShowMessage"

    invoke-virtual {v1, v2, v3, v0}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, LGB;->b(Ljava/lang/String;)Lcom/yik/yak/data/models/Configuration$ThreatCheck;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->h()V

    return-void
.end method

.method private c(Lcom/yik/yak/data/models/Yak;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "attemptToReportReply"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:LAq;

    const-string v1, "YakBak"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LAq;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You have already reported this comment."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    :goto_0
    return v4

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    .line 243
    invoke-static {v5}, LzJ;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "hasn\'t seen dialog, displaying"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 245
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->i()V

    goto :goto_0

    .line 247
    :cond_1
    invoke-static {v5}, LzJ;->b(I)V

    .line 248
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->l()V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/yik/yak/ui/fragment/CommentFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:Landroid/view/View;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "replyId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/yik/yak/data/models/Yak;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    .line 701
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 538
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->d()Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "replyId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    const-string v1, "replyId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/YikYakObject;

    .line 545
    instance-of v1, v0, Lcom/yik/yak/data/models/Yak;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 546
    check-cast v1, Lcom/yik/yak/data/models/Yak;

    .line 548
    iget-object v4, v1, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 549
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found the comment i should scroll to! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->Comment:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p0, v2}, LGF;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 550
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 552
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Landroid/os/Handler;

    new-instance v2, LDD;

    invoke-direct {v2, p0, v0}, LDD;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 590
    :cond_1
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 692
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 693
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 696
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/ReportDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1b5a

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 697
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 796
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:Landroid/view/View;

    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/RefreshListView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    .line 797
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->e()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/yik/yak/ui/view/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yik/yak/ui/view/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 798
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    new-instance v1, LDI;

    invoke-direct {v1, p0}, LDI;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setOnRefreshListener(LEY;)V

    .line 806
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->e()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 807
    new-instance v0, Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    .line 808
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setHeaderData(Lcom/yik/yak/data/models/YikYakObject;)V

    .line 809
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LCQ;)V

    .line 810
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V

    .line 811
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setShouldContextMenuShowOnSingleClick(Z)V

    .line 812
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 1029
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1030
    const v1, 0x7f0800e9

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1031
    const v2, 0x7f08011e

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1032
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/yik/yak/ui/activity/YikYakDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1033
    const/16 v1, 0x1b61

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1034
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 1051
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    const v1, 0x7f0800ed

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1053
    const v2, 0x7f08011e

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1054
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/yik/yak/ui/activity/YikYakDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1055
    const/16 v1, 0x138b

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1056
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Z)V

    .line 407
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 412
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V

    .line 535
    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 419
    const-string v0, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "messageID"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v0, "lat"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 424
    const-string v2, "bc"

    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_2
    const-string v0, "getComments"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-static {v0, v1, v2}, LzY;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 434
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->addLoadingYak()V

    .line 437
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 438
    new-instance v1, LDz;

    invoke-direct {v1, p0, p1}, LDz;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;Z)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    goto :goto_0

    .line 424
    :cond_4
    const-string v0, "0"

    goto :goto_1
.end method

.method protected b()V
    .locals 3

    .prologue
    const v2, 0x7f020168

    const/4 v1, 0x1

    .line 704
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    invoke-static {}, LAF;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    invoke-virtual {v0}, LAw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 708
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    sget-object v1, LAF;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    sget-object v1, LAF;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImage(Landroid/graphics/drawable/Drawable;)V

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 712
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-static {}, LAF;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAnimationBackgroundColor(I)V

    goto :goto_0

    .line 715
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 716
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImageDrawable(I)V

    .line 717
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImage(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 816
    invoke-super {p0, p1}, LDf;->onActivityCreated(Landroid/os/Bundle;)V

    .line 817
    invoke-virtual {p0, v6}, Lcom/yik/yak/ui/fragment/CommentFragment;->setHasOptionsMenu(Z)V

    .line 818
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:LAq;

    .line 820
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    .line 822
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    const-string v1, "canSubmit"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Z

    .line 823
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    const-string v1, "canVote"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->d:Z

    .line 824
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    const-string v1, "canReply"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    .line 825
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    const-string v1, "canReport"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    .line 826
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    const-string v1, "caller"

    const-string v2, "MainFeed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->k:Z

    .line 830
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    if-nez v0, :cond_1

    .line 832
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    .line 833
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    const-string v1, "yak"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 836
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, LAj;

    invoke-direct {v2}, LAj;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LAj;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->d:Z

    iget-boolean v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    iget-boolean v4, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    iget-boolean v5, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->k:Z

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    .line 837
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setHeaderData(Lcom/yik/yak/data/models/YikYakObject;)V

    .line 838
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    .line 846
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v0}, Lcom/yik/yak/data/models/YakkerLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v8

    if-nez v0, :cond_2

    .line 848
    iput-boolean v7, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Z

    .line 849
    iput-boolean v7, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->d:Z

    .line 850
    iput-boolean v7, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    .line 853
    :cond_2
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    if-eqz v0, :cond_4

    .line 854
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 855
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 856
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setClickable(Z)V

    .line 857
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 859
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 869
    :goto_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 871
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 872
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LGs;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V

    .line 874
    :cond_3
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 861
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 862
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 863
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setClickable(Z)V

    .line 864
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 865
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 866
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 942
    sparse-switch p1, :sswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 944
    :sswitch_0
    if-ne p2, v2, :cond_1

    .line 945
    invoke-static {v1}, LzQ;->b(I)V

    .line 946
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 947
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 949
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 953
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 956
    :sswitch_2
    if-ne p2, v2, :cond_0

    .line 957
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    const-string v1, "deleteComment"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 962
    :sswitch_3
    if-ne p2, v2, :cond_0

    .line 963
    const-string v0, "deleteMessage2"

    invoke-direct {p0, v0, v2, v3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 968
    :sswitch_4
    if-ne p2, v2, :cond_0

    .line 969
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/String;I)Z

    .line 970
    const/4 v0, 0x2

    invoke-static {v0}, LzQ;->b(I)V

    goto :goto_0

    .line 974
    :sswitch_5
    if-ne p2, v2, :cond_2

    .line 975
    const-string v0, "KEY_SHOULD_BLOCK_YAKKER"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 976
    invoke-direct {p0, p3}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 978
    :cond_2
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->i()V

    goto :goto_0

    .line 987
    :sswitch_6
    :try_start_0
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 993
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v1}, LzJ;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 995
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->k()V

    .line 996
    invoke-static {v1}, LzJ;->b(I)V

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    .line 989
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 990
    const/4 v0, 0x0

    goto :goto_1

    .line 999
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_4

    .line 1000
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 1001
    iput-object v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    goto :goto_0

    .line 1003
    :cond_4
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->h()V

    goto :goto_0

    .line 1009
    :sswitch_7
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_5

    .line 1010
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c(Lcom/yik/yak/data/models/Yak;)Z

    goto/16 :goto_0

    .line 1012
    :cond_5
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->i()V

    goto/16 :goto_0

    .line 1018
    :sswitch_8
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_6

    .line 1019
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 1020
    iput-object v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    goto/16 :goto_0

    .line 1022
    :cond_6
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->h()V

    goto/16 :goto_0

    .line 942
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x138b -> :sswitch_7
        0x1b59 -> :sswitch_3
        0x1b5a -> :sswitch_1
        0x1b5b -> :sswitch_2
        0x1b5d -> :sswitch_4
        0x1b5e -> :sswitch_6
        0x1b60 -> :sswitch_5
        0x1b61 -> :sswitch_8
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 924
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    .line 926
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 937
    invoke-super {p0, p1}, LDf;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 928
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 931
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 934
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1060
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1061
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1063
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    if-nez v0, :cond_0

    .line 1064
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1065
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1074
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    if-nez v0, :cond_1

    .line 1067
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1068
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1070
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1072
    :cond_2
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 731
    const v0, 0x7f03004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:Landroid/view/View;

    .line 732
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/content/Context;

    .line 733
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 734
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->j()V

    .line 736
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    new-instance v1, LDG;

    invoke-direct {v1, p0}, LDG;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 754
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->v:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 756
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 757
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->v:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :cond_0
    :goto_0
    new-instance v0, LDH;

    invoke-direct {v0, p0}, LDH;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->v:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 790
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->v:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 791
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b()V

    .line 792
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:Landroid/view/View;

    return-object v0

    .line 759
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->v:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 911
    invoke-super {p0}, LDf;->onDestroyView()V

    .line 912
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 913
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setData(Ljava/util/ArrayList;)V

    .line 914
    iput-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Lcom/yik/yak/ui/view/RefreshListView;

    .line 915
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 916
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1078
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1100
    invoke-super {p0, p1}, LDf;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1081
    :pswitch_0
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "This yak cannot be reported."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1096
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1084
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    const-string v1, "Yak"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LAq;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You have already reported this comment."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1087
    :cond_1
    invoke-static {v4}, LzJ;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1088
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->l()V

    .line 1089
    invoke-static {v4}, LzJ;->b(I)V

    goto :goto_1

    .line 1091
    :cond_2
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->i()V

    goto :goto_1

    .line 1098
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 1078
    :pswitch_data_0
    .packed-switch 0x7f0d01bb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 890
    invoke-super {p0}, LDf;->onPause()V

    .line 891
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 892
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 878
    invoke-super {p0}, LDf;->onResume()V

    .line 879
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 881
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    if-nez v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mCommentFooter:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mCommentFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 896
    invoke-super {p0, p1}, LDf;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 897
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 900
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_0

    .line 902
    :try_start_0
    const-string v0, "yak"

    new-instance v1, LAj;

    invoke-direct {v1}, LAj;-><init>()V

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v1, v2}, LAj;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 904
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSendCommentClicked()V
    .locals 6
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0d015b
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1106
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    if-nez v0, :cond_0

    .line 1107
    iput-boolean v5, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 1108
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-static {v0}, LGB;->b(Ljava/lang/String;)Lcom/yik/yak/data/models/Configuration$ThreatCheck;

    move-result-object v1

    .line 1112
    if-eqz v1, :cond_3

    .line 1113
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1114
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1115
    const-string v3, "title"

    const-string v4, "WHOA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v3, "message"

    iget-object v4, v1, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const-string v3, "value"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    iget-boolean v0, v1, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->allowContinue:Z

    if-eqz v0, :cond_1

    .line 1120
    const-string v0, "okText"

    const-string v1, "YES"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    const-string v0, "cancelText"

    const-string v1, "NO"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const/16 v0, 0x1b5d

    invoke-virtual {p0, v2, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    const-string v0, "okText"

    const-string v1, "OK"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    const-string v0, "okOnly"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1126
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1129
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1132
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/String;I)Z

    goto :goto_0
.end method
