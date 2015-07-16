.class public Lcom/yik/yak/ui/fragment/CommentFragment;
.super Lcom/yik/yak/ui/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/YikYakObject;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field protected j:Landroid/os/Bundle;

.field protected k:Ljava/lang/String;

.field public l:Z

.field public m:Lcom/yik/yak/data/models/Yak;

.field protected mCommentFooter:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d016e
    .end annotation
.end field

.field public mReplyField:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d0170
    .end annotation
.end field

.field protected mSendButton:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0d016f
    .end annotation
.end field

.field protected n:Lcom/yik/yak/data/models/Yak;

.field protected o:LAD;

.field protected p:Lcom/yik/yak/data/models/YakkerLocation;

.field public q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

.field public r:Landroid/os/Handler;

.field public s:Lcom/yik/yak/ui/view/RefreshListView;

.field private final t:I

.field private u:Landroid/view/View;

.field private v:Landroid/content/Context;

.field private w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;-><init>()V

    .line 88
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->t:I

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    .line 91
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->d:Z

    .line 92
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    .line 93
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    .line 94
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 95
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 96
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->i:Z

    .line 97
    iput-object v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    .line 98
    const-string v0, "MainFeed"

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 99
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Z

    .line 106
    iput-object v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:LAD;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/yik/yak/data/models/Yak;Ljava/lang/Boolean;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/YakDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const-string v1, "canSubmit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    const-string v1, "canVote"

    iget-boolean v2, p2, Lcom/yik/yak/data/models/Yak;->CanVote:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    const-string v1, "canReply"

    iget-boolean v2, p2, Lcom/yik/yak/data/models/Yak;->CanReply:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    const-string v1, "canReport"

    iget-boolean v2, p2, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    :try_start_0
    const-string v1, "yak"

    new-instance v2, LAv;

    invoke-direct {v2}, LAv;-><init>()V

    invoke-virtual {v2, p2}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    if-eqz p3, :cond_0

    .line 162
    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    :cond_0
    const-string v1, "caller"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/yik/yak/data/models/Yak;ZZZZZLjava/lang/String;Ljava/lang/String;)Lcom/yik/yak/ui/fragment/CommentFragment;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/yik/yak/ui/fragment/CommentFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/CommentFragment;-><init>()V

    .line 134
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-string v2, "canSubmit"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string v2, "canVote"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v2, "canReply"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v2, "canReport"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string v2, "caller"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "isBasecamp"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v2, "replyId"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 143
    invoke-direct {v0, p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->d(Lcom/yik/yak/data/models/Yak;)V

    .line 144
    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/CommentFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1063
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1064
    if-nez p2, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    const-string v0, "KEY_SHOULD_BLOCK_YAKKER"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 1071
    :cond_2
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    const-string v1, "title"

    const-string v2, "Are you sure?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v1, "message"

    const-string v2, "You\'re about to banish the author of this yak from your feed for good. This can\'t be undone, so proceed wisely!"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v1, "okText"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v1, "cancelText"

    const-string v2, "CANCEL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const/16 v1, 0x1b60

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 385
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .prologue
    .line 621
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 622
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 625
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 626
    const-string v0, "messageID"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    if-eqz p1, :cond_0

    .line 629
    const-string v0, "commentID"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :cond_0
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v0, "lat"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v0, "long"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    if-nez p3, :cond_1

    invoke-static {p5}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    const-string v0, "reason"

    invoke-virtual {v1, v0, p5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_1
    if-eqz p4, :cond_2

    .line 641
    const-string v0, "block"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    :cond_2
    const-string v2, "bc"

    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0}, LAJ;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-static {v0, p2, v1, v2}, LAj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 652
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 656
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 657
    new-instance v1, LEk;

    invoke-direct {v1, p0, p3, p1, p4}, LEk;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;ZLcom/yik/yak/data/models/Yak;Z)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 712
    return-void

    .line 643
    :cond_3
    const-string v0, "0"

    goto :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 357
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 358
    new-instance v1, LEc;

    invoke-direct {v1, p0, p1}, LEc;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZLjava/lang/String;)V

    .line 618
    return-void
.end method

.method private a(Lcom/yik/yak/data/models/Yak;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 189
    iget v0, p1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    const-string v2, "shareThreshold"

    const-string v3, "shareThreshold"

    invoke-virtual {v1, v2, v3, v5}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "shareThreshold"

    const-string v2, "message"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080195

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v0, "okText"

    const-string v2, "OK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v0, "okOnly"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivity(Landroid/content/Intent;)V

    .line 217
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 198
    :cond_0
    iget-object v0, p1, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:LAD;

    invoke-virtual {v1}, LAD;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/yik/yak/data/models/Yak;->NumberOfLikes:I

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    const-string v2, "shareThreshold"

    const-string v3, "famousThreshold"

    const/16 v4, 0x14

    invoke-virtual {v1, v2, v3, v4}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 202
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/yik/yak/ui/activity/FamousActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    :try_start_0
    const-string v0, "yak"

    new-instance v2, LAv;

    invoke-direct {v2}, LAv;-><init>()V

    invoke-virtual {v2, p1}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_1
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 213
    :cond_1
    new-instance v0, LHo;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LHo;-><init>(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;)V

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, LHo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 259
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f080157

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 262
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 263
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->i()V

    move v0, v1

    .line 344
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "You must enter a comment first."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    move v0, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 273
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->i()V

    .line 274
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 275
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v0, "lat"

    iget-object v4, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v4}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v0, "long"

    iget-object v4, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v4}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v0, "messageID"

    iget-object v4, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v4, v4, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v0, "comment"

    invoke-virtual {v3, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v0, "bypassedThreatPopup"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 283
    const-string v4, "bc"

    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_2
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0}, LAJ;->f()Ljava/lang/String;

    move-result-object v0

    const-string v4, "postComment"

    iget-object v5, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-static {v0, v4, v3, v5}, LAj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v4

    .line 292
    const-string v0, "RequestBody:body"

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {p0, v3}, LHm;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 294
    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v1

    invoke-static {v1, v0}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v0

    .line 296
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    invoke-virtual {v0, v4}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 301
    invoke-static {v2}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 302
    new-instance v1, LDZ;

    invoke-direct {v1, p0}, LDZ;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    move v0, v2

    .line 344
    goto/16 :goto_0

    .line 283
    :cond_3
    const-string v0, "0"

    goto :goto_1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 388
    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    const-string v0, "KEY_SHOULD_BLOCK_YAKKER"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 393
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_0

    .line 394
    const-string v2, "reportComment"

    .line 395
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1, v5, v4}, LHa;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;Z)V

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 402
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v1, "message"

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "okText"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v1, "okOnly"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
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

    .line 408
    const/16 v1, 0x1b5e

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 409
    return-void

    .line 397
    :cond_0
    const-string v2, "reportMessage"

    .line 398
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1, v5, v4}, LHa;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->e()V

    return-void
.end method

.method private b(Lcom/yik/yak/data/models/Yak;)Z
    .locals 4

    .prologue
    .line 221
    const-string v0, "Are you sure you want to delete this Yak?"

    .line 222
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const-string v2, "title"

    const-string v3, "DELETE YAK"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v0, "okText"

    const-string v2, "YES"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v0, "cancelText"

    const-string v2, "NO"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    .line 230
    if-nez p1, :cond_0

    .line 231
    const/16 v0, 0x1b59

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_0
    const/16 v0, 0x1b5b

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 180
    const/4 v1, 0x2

    invoke-static {v1}, LAa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    const-string v2, "threatWords"

    const-string v3, "alwaysShowMessage"

    invoke-virtual {v1, v2, v3, v0}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, LHi;->b(Ljava/lang/String;)Lcom/yik/yak/data/models/Configuration$ThreatCheck;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/fragment/CommentFragment;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->f()V

    return-void
.end method

.method private c(Lcom/yik/yak/data/models/Yak;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "attemptToReportReply"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, LHm;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:LAD;

    const-string v1, "YakBak"

    iget-object v2, p1, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LAD;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You have already reported this comment."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    :goto_0
    return v4

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    .line 246
    invoke-static {v5}, LzT;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "hasn\'t seen dialog, displaying"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, LHm;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 248
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->g()V

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {v5}, LzT;->b(I)V

    .line 251
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->m()V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/yik/yak/ui/fragment/CommentFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/view/View;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
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
    .line 724
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    .line 725
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 545
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->d()Ljava/lang/String;

    move-result-object v3

    .line 548
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "replyId"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    const-string v1, "replyId"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/YikYakObject;

    .line 554
    instance-of v1, v0, Lcom/yik/yak/data/models/Yak;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 555
    check-cast v1, Lcom/yik/yak/data/models/Yak;

    .line 557
    iget-object v1, v1, Lcom/yik/yak/data/models/Yak;->CommentID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 614
    :cond_1
    :goto_0
    return-void

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 568
    :goto_1
    if-eq v0, v2, :cond_1

    .line 570
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Landroid/os/Handler;

    new-instance v2, LEh;

    invoke-direct {v2, p0, v0}, LEh;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private f()V
    .locals 2

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 716
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 717
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 720
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/dialog/ReportDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x1b5a

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 721
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 820
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/view/View;

    const v1, 0x7f0d01bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/RefreshListView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    .line 821
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/yik/yak/ui/view/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yik/yak/ui/view/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 822
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    new-instance v1, LEo;

    invoke-direct {v1, p0}, LEo;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setOnRefreshListener(LFE;)V

    .line 830
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->f()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 831
    new-instance v0, Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    .line 832
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setHeaderData(Lcom/yik/yak/data/models/YikYakObject;)V

    .line 833
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAdapter(LDd;)V

    .line 834
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V

    .line 835
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setShouldContextMenuShowOnSingleClick(Z)V

    .line 836
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 1055
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1056
    const v1, 0x7f080102

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1057
    const v2, 0x7f08013c

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1058
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/yik/yak/ui/dialog/YikYakDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1059
    const/16 v1, 0x1b61

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1060
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 1077
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    const v1, 0x7f080106

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1079
    const v2, 0x7f08013c

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1080
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Lcom/yik/yak/ui/dialog/YikYakDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1081
    const/16 v1, 0x138b

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1082
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Z)V

    .line 413
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 418
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 420
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V

    .line 542
    :goto_0
    return-void

    .line 424
    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 425
    const-string v0, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v0, "messageID"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v0, "lat"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 430
    const-string v2, "bc"

    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    :cond_2
    const-string v0, "getComments"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    invoke-static {v0, v1, v2}, LAj;->a(Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->addLoadingYak()V

    .line 443
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 444
    new-instance v1, LEd;

    invoke-direct {v1, p0, p1}, LEd;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;Z)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    goto :goto_0

    .line 430
    :cond_4
    const-string v0, "0"

    goto :goto_1
.end method

.method protected b()V
    .locals 3

    .prologue
    const v2, 0x7f020174

    const/4 v1, 0x1

    .line 728
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/RefreshListView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    invoke-static {}, LAS;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    invoke-virtual {v0}, LAJ;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 732
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    sget-object v1, LAS;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 733
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    sget-object v1, LAS;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImage(Landroid/graphics/drawable/Drawable;)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 736
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-static {}, LAS;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setAnimationBackgroundColor(I)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshStyle(I)V

    .line 740
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImageDrawable(I)V

    .line 741
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/RefreshListView;->setRefreshImage(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 840
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 841
    invoke-virtual {p0, v6}, Lcom/yik/yak/ui/fragment/CommentFragment;->setHasOptionsMenu(Z)V

    .line 842
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:LAD;

    .line 844
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    .line 846
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    const-string v1, "canSubmit"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->d:Z

    .line 847
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    const-string v1, "canVote"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    .line 848
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    const-string v1, "canReply"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    .line 849
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    const-string v1, "canReport"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 850
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    const-string v1, "caller"

    const-string v2, "MainFeed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    const-string v1, "isBasecamp"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Z

    .line 854
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-nez v0, :cond_1

    .line 856
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    .line 857
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    const-string v1, "yak"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 860
    :try_start_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, LAv;

    invoke-direct {v2}, LAv;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, LAv;->a(Lorg/json/JSONObject;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->e:Z

    iget-boolean v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    iget-boolean v4, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    iget-boolean v5, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Z

    invoke-static/range {v0 .. v5}, Lcom/yik/yak/data/models/Yak;->initializeYak(Landroid/content/Context;Lcom/yik/yak/data/models/Yak;ZZZZ)Lcom/yik/yak/data/models/Yak;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    .line 861
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setHeaderData(Lcom/yik/yak/data/models/YikYakObject;)V

    .line 862
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->o:LAD;

    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->p:Lcom/yik/yak/data/models/YakkerLocation;

    .line 870
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    if-eqz v0, :cond_3

    .line 871
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 872
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 873
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setClickable(Z)V

    .line 874
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 876
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 886
    :goto_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 889
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LHa;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;)V

    .line 891
    :cond_2
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 864
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 878
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 879
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 880
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setClickable(Z)V

    .line 881
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    const v1, 0x7f080157

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 882
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 883
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mSendButton:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 959
    sparse-switch p1, :sswitch_data_0

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 961
    :sswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 962
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->onSendCommentClicked()V

    goto :goto_0

    .line 966
    :sswitch_1
    if-ne p2, v3, :cond_1

    .line 967
    invoke-static {v4}, LAa;->b(I)V

    .line 968
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 969
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Landroid/widget/EditText;)V

    goto :goto_0

    .line 971
    :cond_1
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 975
    :sswitch_2
    invoke-direct {p0, p2, p3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 978
    :sswitch_3
    if-ne p2, v3, :cond_0

    .line 979
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    const-string v1, "deleteComment"

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 984
    :sswitch_4
    if-ne p2, v3, :cond_0

    .line 985
    const-string v0, "deleteMessage2"

    invoke-direct {p0, v0, v3, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 990
    :sswitch_5
    if-ne p2, v3, :cond_2

    .line 991
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/String;I)Z

    .line 992
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Reply"

    iget-boolean v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LHa;->a(Ljava/lang/String;ZLjava/lang/Boolean;)V

    .line 993
    const/4 v0, 0x2

    invoke-static {v0}, LAa;->b(I)V

    goto :goto_0

    .line 996
    :cond_2
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v2, "Reply"

    iget-boolean v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, LHa;->a(Ljava/lang/String;ZLjava/lang/Boolean;)V

    goto :goto_0

    .line 1000
    :sswitch_6
    if-ne p2, v3, :cond_3

    .line 1001
    const-string v0, "KEY_SHOULD_BLOCK_YAKKER"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1002
    invoke-direct {p0, p3}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 1004
    :cond_3
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->g()V

    goto :goto_0

    .line 1013
    :sswitch_7
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

    .line 1019
    :goto_1
    if-eqz v0, :cond_4

    invoke-static {v4}, LzT;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1021
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->l()V

    .line 1022
    invoke-static {v4}, LzT;->b(I)V

    goto/16 :goto_0

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 1016
    goto :goto_1

    .line 1025
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_5

    .line 1026
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 1027
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    goto/16 :goto_0

    .line 1029
    :cond_5
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->f()V

    goto/16 :goto_0

    .line 1035
    :sswitch_8
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_6

    .line 1036
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c(Lcom/yik/yak/data/models/Yak;)Z

    goto/16 :goto_0

    .line 1038
    :cond_6
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->g()V

    goto/16 :goto_0

    .line 1044
    :sswitch_9
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_7

    .line 1045
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a()V

    .line 1046
    iput-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->n:Lcom/yik/yak/data/models/Yak;

    goto/16 :goto_0

    .line 1048
    :cond_7
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->f()V

    goto/16 :goto_0

    .line 959
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x4d9 -> :sswitch_0
        0x138b -> :sswitch_8
        0x1b59 -> :sswitch_4
        0x1b5a -> :sswitch_2
        0x1b5b -> :sswitch_3
        0x1b5d -> :sswitch_5
        0x1b5e -> :sswitch_7
        0x1b60 -> :sswitch_6
        0x1b61 -> :sswitch_9
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 941
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Yak;

    .line 943
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 954
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 945
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 948
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 951
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->c(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 943
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

    .line 1086
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1087
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1089
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-nez v0, :cond_0

    .line 1090
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1091
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1100
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-boolean v0, v0, Lcom/yik/yak/data/models/Yak;->CanReport:Z

    if-nez v0, :cond_1

    .line 1093
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1094
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1095
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v0, v0, Lcom/yik/yak/data/models/Yak;->PosterID:Ljava/lang/String;

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1098
    :cond_2
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 755
    const v0, 0x7f030053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/view/View;

    .line 756
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->v:Landroid/content/Context;

    .line 757
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 758
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->k()V

    .line 760
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    new-instance v1, LEm;

    invoke-direct {v1, p0}, LEm;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 778
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 780
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 781
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_0
    :goto_0
    new-instance v0, LEn;

    invoke-direct {v0, p0}, LEn;-><init>(Lcom/yik/yak/ui/fragment/CommentFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 814
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 815
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b()V

    .line 816
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/view/View;

    return-object v0

    .line 783
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->w:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

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

    .line 928
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onDestroyView()V

    .line 929
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 930
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->q:Lcom/yik/yak/ui/adapter/YakDetailAdapter;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/adapter/YakDetailAdapter;->setData(Ljava/util/ArrayList;)V

    .line 931
    iput-object v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->s:Lcom/yik/yak/ui/view/RefreshListView;

    .line 932
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 933
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1126
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1107
    :pswitch_0
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    if-nez v0, :cond_0

    .line 1108
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "This yak cannot be reported."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1122
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1110
    :cond_0
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    const-string v1, "Yak"

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    iget-object v2, v2, Lcom/yik/yak/data/models/Yak;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LAD;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "You have already reported this comment."

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1113
    :cond_1
    invoke-static {v4}, LzT;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1114
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->m()V

    .line 1115
    invoke-static {v4}, LzT;->b(I)V

    goto :goto_1

    .line 1117
    :cond_2
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->g()V

    goto :goto_1

    .line 1124
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Lcom/yik/yak/data/models/Yak;)Z

    move-result v0

    goto :goto_0

    .line 1104
    :pswitch_data_0
    .packed-switch 0x7f0d01de
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 907
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onPause()V

    .line 908
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 909
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 895
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onResume()V

    .line 896
    iput-boolean v1, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 898
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->f:Z

    if-nez v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mCommentFooter:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 903
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mCommentFooter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 913
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 914
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 917
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    if-eqz v0, :cond_0

    .line 919
    :try_start_0
    const-string v0, "yak"

    new-instance v1, LAv;

    invoke-direct {v1}, LAv;-><init>()V

    iget-object v2, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->m:Lcom/yik/yak/data/models/Yak;

    invoke-virtual {v1, v2}, LAv;->b(Lcom/yik/yak/data/models/Yak;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 921
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSendCommentClicked()V
    .locals 7
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0d016f
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1132
    invoke-static {}, LAa;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1133
    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    if-nez v0, :cond_0

    .line 1134
    iput-boolean v6, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 1135
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->mReplyField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    invoke-static {v0}, LHi;->b(Ljava/lang/String;)Lcom/yik/yak/data/models/Configuration$ThreatCheck;

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_3

    .line 1140
    invoke-direct {p0, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1141
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1142
    const-string v3, "title"

    const-string v4, "WHOA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    const-string v3, "message"

    iget-object v4, v1, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    const-string v3, "value"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    iget-boolean v0, v1, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->allowContinue:Z

    if-eqz v0, :cond_1

    .line 1147
    const-string v0, "okText"

    const-string v1, "YES"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string v0, "cancelText"

    const-string v1, "NO"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const/16 v0, 0x1b5d

    invoke-virtual {p0, v2, v0}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    const-string v0, "okText"

    const-string v1, "OK"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    const-string v0, "okOnly"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1153
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Reply"

    iget-boolean v3, p0, Lcom/yik/yak/ui/fragment/CommentFragment;->l:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, LHa;->a(Ljava/lang/String;ZLjava/lang/Boolean;)V

    .line 1154
    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1157
    :cond_2
    invoke-direct {p0, v0, v5}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1160
    :cond_3
    invoke-direct {p0, v0, v5}, Lcom/yik/yak/ui/fragment/CommentFragment;->a(Ljava/lang/String;I)Z

    goto :goto_0

    .line 1164
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/VerificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    const/16 v1, 0x4d9

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/CommentFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
