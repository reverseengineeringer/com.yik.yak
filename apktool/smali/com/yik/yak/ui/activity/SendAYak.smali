.class public Lcom/yik/yak/ui/activity/SendAYak;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field private A:J

.field private final B:LFN;

.field private c:Landroid/os/Bundle;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;

.field private m:LCm;

.field private n:Landroid/os/Handler;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:LAD;

.field private s:Landroid/widget/EditText;

.field private t:Landroid/widget/ImageView;

.field private u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

.field private v:Lcom/yik/yak/ui/view/MultipleStateIconView;

.field private w:Lcom/yik/yak/ui/view/MultipleStateIconView;

.field private x:Landroid/widget/ProgressBar;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    .line 90
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    .line 91
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    .line 92
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    .line 93
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->g:Z

    .line 94
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    .line 95
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    .line 96
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->n:Landroid/os/Handler;

    .line 105
    new-instance v0, LBR;

    invoke-direct {v0, p0}, LBR;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/Runnable;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:LAD;

    .line 132
    new-instance v0, LCb;

    invoke-direct {v0, p0}, LCb;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->B:LFN;

    .line 1114
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;LCm;)LCm;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->m:LCm;

    return-object p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 689
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 690
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/16 v1, 0x37

    .line 500
    invoke-static {v1}, LHi;->a(I)I

    move-result v0

    invoke-static {v1}, LHi;->a(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 501
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->n()V

    .line 502
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/MultipleStateIconView;

    sget-object v2, LFQ;->b:LFQ;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setIconState(LFQ;)V

    .line 503
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 504
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    const-string v1, "yakkerHandle"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const-string v0, "showHandle"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    .line 427
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/TextView;Z)V

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const-string v1, "content"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    rsub-int v1, v1, 0xc8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 2

    .prologue
    .line 440
    if-eqz p2, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->k()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;I)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/SendAYak;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/widget/TextView;Z)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/activity/SendAYak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;LwC;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;LwC;)V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 6

    .prologue
    .line 265
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 266
    const/4 v1, 0x0

    .line 267
    if-eqz p3, :cond_4

    const-string v0, "submitPeekMessage"

    .line 268
    :goto_0
    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    iget-boolean v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    if-eqz v4, :cond_0

    invoke-static {v2}, LHi;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 271
    const-string v4, "hndl"

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    invoke-static {v2}, LAa;->c(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:LAD;

    invoke-virtual {v2}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v2

    .line 276
    const-string v4, "userID"

    invoke-static {}, LAa;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    if-eqz p3, :cond_1

    .line 278
    const-string v4, "peekID"

    iget-object v5, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    const-string v4, "lat"

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v4, "long"

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string v2, "bypassedThreatPopup"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v2, "message"

    invoke-virtual {v3, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    invoke-static {v2}, LHi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    const/4 v1, 0x6

    .line 288
    const-string v2, "pID"

    iget-object v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v2, v1

    .line 291
    if-nez p3, :cond_3

    .line 292
    const-string v4, "bc"

    iget-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_1
    invoke-virtual {v3, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_3
    invoke-static {v2}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    if-eqz p3, :cond_6

    const-string v1, "FeaturedPeek"

    .line 298
    :goto_2
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v4

    invoke-virtual {v4}, LAJ;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v3, v5}, LAj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v4

    .line 305
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v5

    const-string v0, "RequestBody:body"

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v0}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v0

    .line 308
    new-instance v3, LxF;

    invoke-direct {v3}, LxF;-><init>()V

    invoke-virtual {v3, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    invoke-virtual {v0, v4}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 313
    const/4 v3, 0x1

    invoke-static {v3}, LAj;->a(Z)Lxy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 314
    new-instance v3, LCd;

    invoke-direct {v3, p0, p3, v2, v1}, LCd;-><init>(Lcom/yik/yak/ui/activity/SendAYak;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, LwY;->a(Lxc;)V

    .line 369
    return-void

    .line 267
    :cond_4
    const-string v0, "sendMessage"

    goto/16 :goto_0

    .line 292
    :cond_5
    const-string v1, "0"

    goto :goto_1

    .line 296
    :cond_6
    const-string v1, "MainFeed"

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LHi;->b(Ljava/lang/String;)Lcom/yik/yak/data/models/Configuration$ThreatCheck;

    move-result-object v0

    .line 228
    if-nez v0, :cond_0

    .line 229
    iput-boolean v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    .line 230
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    invoke-direct {p0, p2, v5, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;IZ)V

    .line 262
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-boolean v1, v0, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->allowContinue:Z

    if-eqz v1, :cond_3

    .line 235
    const/4 v1, 0x2

    invoke-static {v1}, LAa;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    const-string v2, "threatWords"

    const-string v3, "alwaysShowMessage"

    invoke-virtual {v1, v2, v3, v4}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 237
    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->message:Ljava/lang/String;

    .line 239
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    const-class v3, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string v2, "title"

    const-string v3, "WARNING"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v0, "value"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v0, "okText"

    const-string v2, "YES"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v0, "cancelText"

    const-string v2, "NO"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const/16 v0, 0x1b5c

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 247
    :cond_2
    iput-boolean v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    .line 248
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    invoke-direct {p0, p2, v5, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->message:Ljava/lang/String;

    .line 253
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    const-class v3, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    const-string v2, "title"

    const-string v3, "WHOA!"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v0, "value"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v0, "okText"

    const-string v2, "OK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    const-string v0, "okOnly"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v2, "Yak"

    iget-boolean v3, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, LHa;->a(Ljava/lang/String;ZLjava/lang/Boolean;)V

    .line 260
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;LwC;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 625
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;LwC;Ljava/lang/String;LwH;)V

    .line 626
    return-void
.end method

.method private a(Ljava/lang/String;LwC;Ljava/lang/String;LwH;)V
    .locals 2

    .prologue
    .line 629
    invoke-static {}, LwF;->b()Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->m()V

    .line 641
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nispok/snackbar/Snackbar;->a(LwC;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Z)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, LCl;

    invoke-direct {v1, p0}, LCl;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(LwI;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    .line 678
    if-eqz p3, :cond_1

    .line 679
    sget-object v0, LwG;->b:LwG;

    invoke-virtual {v1, v0}, Lcom/nispok/snackbar/Snackbar;->a(LwG;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/nispok/snackbar/Snackbar;->b(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/nispok/snackbar/Snackbar;->a(LwH;)Lcom/nispok/snackbar/Snackbar;

    .line 684
    :cond_1
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, LwF;->a(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 888
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/MultipleStateIconView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/MultipleStateIconView;

    .line 890
    if-eqz p1, :cond_1

    .line 891
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 892
    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 894
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/MultipleStateIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/MultipleStateIconView;

    new-instance v1, LBW;

    invoke-direct {v1, p0}, LBW;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/MultipleStateIconView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setVisibility(I)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/MultipleStateIconView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1107
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    .line 1108
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    .line 1110
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 548
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v1, "okText"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v1, "okOnly"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->startActivity(Landroid/content/Intent;)V

    .line 554
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 914
    const v0, 0x7f0d009e

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/MultipleStateIconView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    .line 916
    if-eqz p1, :cond_0

    .line 917
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinksEnabled(Z)V

    .line 924
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinksEnabled(Z)V

    .line 922
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/SendAYak;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    return p1
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 167
    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->g()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    invoke-static {}, LAD;->a()LAD;

    move-result-object v0

    invoke-virtual {v0}, LAD;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v1, "title"

    const-string v2, "Location Services"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "message"

    const-string v2, "Location services must be enabled to post and read local Yaks. Would you like to enable it now?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v1, "okText"

    const-string v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v1, "cancelText"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/16 v1, 0x138a

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/SendAYak;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 448
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "images"

    const-string v2, "s3Url"

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v3

    invoke-virtual {v3}, LAJ;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?s3_object_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 456
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->t()V

    .line 457
    const/4 v1, 0x1

    invoke-static {v1}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 458
    new-instance v1, LCh;

    invoke-direct {v1, p0, p1}, LCh;-><init>(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    .line 497
    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/SendAYak;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    return p1
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "We are currently processing your link."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->g:Z

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "We are currently processing your image."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/MultipleStateIconView;->a()LFQ;

    move-result-object v0

    sget-object v1, LFQ;->a:LFQ;

    if-ne v0, v1, :cond_4

    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Invalid Link Input"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 196
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    const v0, 0x7f080116

    .line 208
    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 199
    :cond_3
    const v0, 0x7f080115

    .line 200
    const-string v2, "Sites"

    new-instance v3, LCc;

    invoke-direct {v3, p0}, LCc;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 213
    :cond_4
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 218
    :cond_5
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "You have not entered a Yak yet"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->m()V

    return-void
.end method

.method public static synthetic e(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/MultipleStateIconView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->b()V

    .line 374
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCg;

    invoke-direct {v1, p0}, LCg;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    return-void
.end method

.method public static synthetic f(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/MultipleStateIconView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/MultipleStateIconView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 420
    return-void
.end method

.method public static synthetic g(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/LinkDetectingEditText;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 507
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;

    invoke-static {v0}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;

    .line 517
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;

    .line 518
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 522
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_hhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    new-instance v2, Ljava/io/File;

    invoke-static {}, LHi;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 527
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 529
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 533
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 536
    :cond_4
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 557
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 558
    const-string v1, "title"

    const-string v2, "Remove Image?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v1, "message"

    const-string v2, "Are you sure you want to remove this image?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v1, "okText"

    const-string v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v1, "cancelText"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const/16 v1, 0x7d5

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 563
    return-void
.end method

.method public static synthetic h(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->f()V

    return-void
.end method

.method public static synthetic i(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    sget-object v1, LFQ;->b:LFQ;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setIconState(LFQ;)V

    .line 567
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    .line 568
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->m()V

    .line 569
    return-void
.end method

.method public static synthetic j(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 572
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    sget-object v1, LFQ;->a:LFQ;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setIconState(LFQ;)V

    .line 573
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    .line 574
    const-string v0, "This link is not valid."

    sget-object v1, LwC;->c:LwC;

    const-string v2, "View Sites"

    new-instance v3, LCj;

    invoke-direct {v3, p0}, LCj;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;LwC;Ljava/lang/String;LwH;)V

    .line 581
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    .line 586
    new-instance v0, Lcom/yik/yak/data/http/request/ValidateUrlRequest;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/data/http/request/ValidateUrlRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, LCk;

    invoke-direct {v1, p0}, LCk;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, p0, v1}, Lcom/yik/yak/data/http/request/ValidateUrlRequest;->execute(Landroid/content/Context;LAp;)Landroid/os/Handler;

    .line 618
    return-void
.end method

.method public static synthetic k(Lcom/yik/yak/ui/activity/SendAYak;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 622
    return-void
.end method

.method public static synthetic l(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    return-void
.end method

.method public static synthetic m(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 0

    .prologue
    .line 694
    invoke-static {}, LwF;->a()V

    .line 695
    return-void
.end method

.method public static synthetic n(Lcom/yik/yak/ui/activity/SendAYak;)LCm;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->m:LCm;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 699
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->g:Z

    .line 703
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->x:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 704
    return-void
.end method

.method public static synthetic o(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->p()V

    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->g:Z

    .line 708
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->x:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 709
    return-void
.end method

.method public static synthetic p(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->u()V

    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 862
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/LinkDetectingEditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    .line 864
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->clearFocus()V

    .line 866
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/os/Bundle;)V

    .line 869
    :cond_0
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    if-eqz v0, :cond_2

    .line 870
    invoke-static {}, LAO;->a()LAO;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, LAO;->c(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_1

    .line 872
    iget-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitPhotos:Z

    invoke-direct {p0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Z)V

    .line 873
    iget-boolean v0, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitLinks:Z

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->b(Z)V

    .line 885
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Z)V

    .line 876
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->b(Z)V

    goto :goto_0

    .line 878
    :cond_2
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    if-eqz v0, :cond_3

    .line 879
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "bcPhotosEnabled"

    invoke-virtual {v0, v1, v2}, LAJ;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Z)V

    .line 880
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "bcLinksEnabled"

    invoke-virtual {v0, v1, v2}, LAJ;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->b(Z)V

    goto :goto_0

    .line 882
    :cond_3
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "photosEnabled"

    invoke-virtual {v0, v1, v2}, LAJ;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Z)V

    .line 883
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "linksEnabled"

    invoke-virtual {v0, v1, v2}, LAJ;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->b(Z)V

    goto :goto_0
.end method

.method public static synthetic q(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->j()V

    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 927
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    new-instance v1, LBX;

    invoke-direct {v1, p0}, LBX;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 938
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "linksEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LAJ;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->B:LFN;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setOnLinkAddedOrEditedListener(LFN;)V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    new-instance v1, LBY;

    invoke-direct {v1, p0}, LBY;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 957
    return-void
.end method

.method public static synthetic r(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->i()V

    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 960
    new-instance v0, Lcom/yik/yak/data/http/request/GetWhiteListOfSitesRequest;

    invoke-direct {v0}, Lcom/yik/yak/data/http/request/GetWhiteListOfSitesRequest;-><init>()V

    new-instance v1, LBZ;

    invoke-direct {v1, p0}, LBZ;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, p0, v1}, Lcom/yik/yak/data/http/request/GetWhiteListOfSitesRequest;->execute(Landroid/content/Context;LAp;)Landroid/os/Handler;

    .line 973
    return-void
.end method

.method public static synthetic s(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->d()V

    return-void
.end method

.method public static synthetic t(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setDisabled(Z)V

    .line 1000
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setOnLinkAddedOrEditedListener(LFN;)V

    .line 1001
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinksEnabled(Z)V

    .line 1002
    return-void
.end method

.method public static synthetic u(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Lcom/yik/yak/ui/view/MultipleStateIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setDisabled(Z)V

    .line 1006
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->B:LFN;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setOnLinkAddedOrEditedListener(LFN;)V

    .line 1007
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinksEnabled(Z)V

    .line 1008
    return-void
.end method

.method public static synthetic v(Lcom/yik/yak/ui/activity/SendAYak;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    return v0
.end method

.method public static synthetic w(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->h()V

    return-void
.end method

.method public static synthetic x(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->e()V

    return-void
.end method

.method public static synthetic y(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1187
    if-nez p1, :cond_0

    .line 1204
    :goto_0
    return-object v3

    .line 1194
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1195
    invoke-virtual/range {v0 .. v5}, Lcom/yik/yak/ui/activity/SendAYak;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1197
    if-eqz v0, :cond_1

    .line 1198
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1199
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1200
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1204
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1012
    sparse-switch p1, :sswitch_data_0

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1014
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->d()V

    goto :goto_0

    .line 1019
    :sswitch_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/EditText;)V

    .line 1020
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const-string v1, "url"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1027
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/activity/SendAYak;->b(I)V

    goto :goto_0

    .line 1030
    :sswitch_3
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/EditText;)V

    .line 1031
    if-ne p2, v3, :cond_0

    .line 1032
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    .line 1033
    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    .line 1034
    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;

    .line 1035
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->u()V

    .line 1036
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/MultipleStateIconView;

    sget-object v1, LFQ;->c:LFQ;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/MultipleStateIconView;->setIconState(LFQ;)V

    .line 1037
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->l()V

    goto :goto_0

    .line 1041
    :sswitch_4
    if-ne p2, v3, :cond_1

    .line 1042
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1045
    :cond_1
    invoke-virtual {p0, v4}, Lcom/yik/yak/ui/activity/SendAYak;->setResult(I)V

    .line 1046
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->finish()V

    goto :goto_0

    .line 1050
    :sswitch_5
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->c()V

    goto :goto_0

    .line 1053
    :sswitch_6
    if-ne p2, v3, :cond_2

    .line 1054
    const/4 v0, 0x2

    invoke-static {v0}, LAa;->b(I)V

    .line 1055
    iput-boolean v3, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    .line 1056
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    invoke-direct {p0, v0, v3, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;IZ)V

    .line 1057
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Yak"

    iget-boolean v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LHa;->a(Ljava/lang/String;ZLjava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1059
    :cond_2
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "Yak"

    iget-boolean v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LHa;->a(Ljava/lang/String;ZLjava/lang/Boolean;)V

    .line 1060
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 1064
    :sswitch_7
    if-ne p2, v0, :cond_5

    .line 1065
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->l()V

    .line 1066
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->o()V

    .line 1067
    if-eqz p3, :cond_4

    .line 1069
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    .line 1070
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;

    invoke-static {v0, v1}, LHi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1073
    if-nez v1, :cond_3

    .line 1074
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1081
    :catch_0
    move-exception v0

    .line 1085
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCa;

    invoke-direct {v1, p0}, LCa;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1078
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1083
    :cond_4
    iput-boolean v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    goto :goto_1

    .line 1093
    :cond_5
    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    .line 1094
    iput-boolean v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    .line 1095
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    .line 1096
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 1012
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x4d9 -> :sswitch_0
        0x7d4 -> :sswitch_7
        0x7d5 -> :sswitch_3
        0x1388 -> :sswitch_5
        0x138a -> :sswitch_4
        0x1b5c -> :sswitch_6
        0x1b5f -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 987
    const-string v1, "title"

    const v2, 0x7f080153

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    const-string v1, "message"

    const v2, 0x7f080152

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string v1, "okText"

    const v2, 0x7f0801b2

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    const-string v1, "cancelText"

    const v2, 0x7f080132

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const/16 v1, 0x1b5f

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 996
    :goto_0
    return-void

    .line 993
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    .line 994
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 717
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 718
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->setContentView(I)V

    .line 719
    const-string v0, "Send a Yak"

    .line 721
    iput-object p0, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    .line 722
    invoke-static {}, LAD;->a()LAD;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:LAD;

    .line 724
    if-nez p1, :cond_1

    .line 725
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    .line 730
    :goto_0
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 731
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    const-string v2, "peekID"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    const-string v2, "isPeek"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    .line 736
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    const-string v2, "isBasecamp"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    .line 738
    invoke-static {}, LHa;->a()LHa;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Z

    invoke-virtual {v1, v2}, LHa;->e(Z)V

    .line 741
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    const-string v2, "canSubmit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    const-string v2, "canSubmit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 742
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:Landroid/content/Context;

    const-string v1, "Cannot post Yak to this Peek."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 743
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->setResult(I)V

    .line 744
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->finish()V

    .line 821
    :goto_1
    return-void

    .line 727
    :cond_1
    iput-object p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    goto :goto_0

    .line 748
    :cond_2
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 749
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    :cond_3
    const-string v1, "Post a Yak"

    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;)V

    .line 754
    const-string v1, "Home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 755
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 758
    :cond_4
    const v0, 0x7f0d00a3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LBS;

    invoke-direct {v1, p0}, LBS;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->x:Landroid/widget/ProgressBar;

    .line 772
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    .line 773
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    invoke-static {}, LAa;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    new-instance v1, LBT;

    invoke-direct {v1, p0}, LBT;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 786
    const v0, 0x7f0d00a0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    .line 787
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    new-instance v1, LBU;

    invoke-direct {v1, p0}, LBU;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 805
    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    .line 806
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 807
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:Landroid/widget/TextView;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/RelativeLayout;

    .line 810
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/RelativeLayout;

    new-instance v1, LBV;

    invoke-direct {v1, p0}, LBV;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->c()V

    .line 818
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->q()V

    .line 819
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->r()V

    .line 820
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->s()V

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 826
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 827
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const-string v1, "STATE_KEY_YAK"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setText(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    const-string v1, "STATE_KEY_HANDLE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 829
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 839
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->A:J

    .line 842
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "linksEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LAJ;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 845
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 855
    const-string v0, "STATE_KEY_YAK"

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v0, "STATE_KEY_HANDLE"

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 833
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onStart()V

    .line 834
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const-string v1, "SendScreen"

    invoke-virtual {v0, v1}, LHa;->a(Ljava/lang/String;)V

    .line 835
    return-void
.end method
