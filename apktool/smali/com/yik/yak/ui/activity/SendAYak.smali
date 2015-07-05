.class public Lcom/yik/yak/ui/activity/SendAYak;
.super Lcom/yik/yak/ui/activity/BaseAppCompatActivity;
.source "SourceFile"


# instance fields
.field private b:Landroid/os/Bundle;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:LCi;

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:LAq;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

.field private v:Lcom/yik/yak/ui/view/LinkIconView;

.field private w:Landroid/widget/ProgressBar;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/widget/TextView;

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;-><init>()V

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    .line 97
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Z

    .line 98
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    .line 99
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    .line 100
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    .line 101
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->g:Z

    .line 102
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    .line 103
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->m:Landroid/os/Handler;

    .line 112
    new-instance v0, LBO;

    invoke-direct {v0, p0}, LBO;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->n:Ljava/lang/Runnable;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:LAq;

    .line 1043
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;LCi;)LCi;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:LCi;

    return-object p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 1035
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    .line 1037
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    .line 1039
    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/16 v1, 0x37

    .line 478
    invoke-static {v1}, LGB;->a(I)I

    move-result v0

    invoke-static {v1}, LGB;->a(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->n()V

    .line 480
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 481
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    const-string v1, "yakkerHandle"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 406
    const-string v0, "showHandle"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    .line 407
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/ImageView;

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    invoke-direct {p0, v0, v3}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/TextView;Z)V

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const-string v1, "content"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    rsub-int v1, v1, 0xc8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/ImageView;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/TextView;Z)V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 2

    .prologue
    .line 420
    if-eqz p2, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    :goto_0
    return-void

    .line 423
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
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->k()V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Landroid/widget/TextView;Z)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/activity/SendAYak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;Lwt;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;Lwt;)V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 6

    .prologue
    .line 245
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 246
    const/4 v1, 0x0

    .line 247
    if-eqz p3, :cond_4

    const-string v0, "submitPeekMessage"

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    iget-boolean v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    if-eqz v4, :cond_0

    invoke-static {v2}, LGB;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    const-string v4, "hndl"

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    invoke-static {v2}, LzQ;->b(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:LAq;

    invoke-virtual {v2}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v2

    .line 256
    const-string v4, "userID"

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    if-eqz p3, :cond_1

    .line 258
    const-string v4, "peekID"

    iget-object v5, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_1
    const-string v4, "lat"

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v4, "long"

    invoke-virtual {v2}, Lcom/yik/yak/data/models/YakkerLocation;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "bypassedThreatPopup"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v2, "message"

    invoke-virtual {v3, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/String;

    invoke-static {v2}, LGB;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 267
    const/4 v1, 0x6

    .line 268
    const-string v2, "pID"

    iget-object v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v2, v1

    .line 271
    if-nez p3, :cond_3

    .line 272
    const-string v4, "bc"

    iget-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_1
    invoke-virtual {v3, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_3
    invoke-static {v2}, Lcom/yik/yak/data/models/Yak;->getYakTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 276
    if-eqz p3, :cond_6

    const-string v1, "FeaturedPeek"

    .line 278
    :goto_2
    invoke-static {}, LAw;->a()LAw;

    move-result-object v4

    invoke-virtual {v4}, LAw;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v3, v5}, LzY;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/TreeMap;Lcom/yik/yak/data/models/YakkerLocation;)Ljava/lang/String;

    move-result-object v4

    .line 285
    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v5

    const-string v0, "RequestBody:body"

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v0}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v0

    .line 288
    new-instance v3, Lxv;

    invoke-direct {v3}, Lxv;-><init>()V

    invoke-virtual {v3, v0}, Lxv;->a(Lxw;)Lxv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 293
    const/4 v3, 0x1

    invoke-static {v3}, LzY;->a(Z)Lxo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 294
    new-instance v3, LBY;

    invoke-direct {v3, p0, p3, v2, v1}, LBY;-><init>(Lcom/yik/yak/ui/activity/SendAYak;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, LwP;->a(LwT;)V

    .line 349
    return-void

    .line 247
    :cond_4
    const-string v0, "sendMessage"

    goto/16 :goto_0

    .line 272
    :cond_5
    const-string v1, "0"

    goto :goto_1

    .line 276
    :cond_6
    const-string v1, "MainFeed"

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LGB;->b(Ljava/lang/String;)Lcom/yik/yak/data/models/Configuration$ThreatCheck;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 210
    iput-boolean v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    .line 211
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Z

    invoke-direct {p0, p2, v5, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;IZ)V

    .line 242
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-boolean v1, v0, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->allowContinue:Z

    if-eqz v1, :cond_3

    .line 216
    const/4 v1, 0x2

    invoke-static {v1}, LzQ;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    const-string v2, "threatWords"

    const-string v3, "alwaysShowMessage"

    invoke-virtual {v1, v2, v3, v4}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    .line 218
    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->message:Ljava/lang/String;

    .line 220
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    const-class v3, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    const-string v2, "title"

    const-string v3, "WARNING"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v0, "value"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v0, "okText"

    const-string v2, "YES"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v0, "cancelText"

    const-string v2, "NO"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/16 v0, 0x1b5c

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 228
    :cond_2
    iput-boolean v4, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    .line 229
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Z

    invoke-direct {p0, p2, v5, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v0, v0, Lcom/yik/yak/data/models/Configuration$ThreatCheck;->message:Ljava/lang/String;

    .line 234
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    const-class v3, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    const-string v2, "title"

    const-string v3, "WHOA!"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v0, "value"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v0, "okText"

    const-string v2, "OK"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v0, "okOnly"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lwt;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 604
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;Lwt;Ljava/lang/String;Lwy;)V

    .line 605
    return-void
.end method

.method private a(Ljava/lang/String;Lwt;Ljava/lang/String;Lwy;)V
    .locals 2

    .prologue
    .line 608
    invoke-static {}, Lww;->b()Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 613
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nispok/snackbar/Snackbar;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->m()V

    .line 620
    invoke-static {p0}, Lcom/nispok/snackbar/Snackbar;->a(Landroid/content/Context;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nispok/snackbar/Snackbar;->a(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nispok/snackbar/Snackbar;->a(Lwt;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(I)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nispok/snackbar/Snackbar;->a(Z)Lcom/nispok/snackbar/Snackbar;

    move-result-object v1

    .line 626
    if-eqz p3, :cond_1

    .line 627
    sget-object v0, Lwx;->b:Lwx;

    invoke-virtual {v1, v0}, Lcom/nispok/snackbar/Snackbar;->a(Lwx;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/nispok/snackbar/Snackbar;->b(Ljava/lang/CharSequence;)Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/nispok/snackbar/Snackbar;->a(Lwy;)Lcom/nispok/snackbar/Snackbar;

    .line 632
    :cond_1
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lww;->a(Lcom/nispok/snackbar/Snackbar;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 825
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    .line 826
    if-eqz p1, :cond_1

    .line 827
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 828
    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 831
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    new-instance v1, LBR;

    invoke-direct {v1, p0}, LBR;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 843
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 144
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
    .line 88
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->f()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 428
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "images"

    const-string v2, "s3Url"

    invoke-static {}, LAw;->a()LAw;

    move-result-object v3

    invoke-virtual {v3}, LAw;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
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

    .line 432
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 436
    const/4 v1, 0x1

    invoke-static {v1}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 437
    new-instance v1, LCc;

    invoke-direct {v1, p0, p1}, LCc;-><init>(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    .line 475
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 527
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    const-string v1, "okText"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    const-string v1, "okOnly"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->startActivity(Landroid/content/Intent;)V

    .line 533
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 846
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/LinkIconView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/LinkIconView;

    .line 848
    if-eqz p1, :cond_0

    .line 849
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/LinkIconView;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/LinkIconView;->setVisibility(I)V

    .line 850
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinksEnabled(Z)V

    .line 856
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/LinkIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkIconView;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0, v2}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinksEnabled(Z)V

    .line 854
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/yik/yak/ui/activity/SendAYak;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->g:Z

    return p1
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 148
    invoke-static {p0}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v0

    invoke-virtual {v0}, LAq;->f()Lcom/yik/yak/data/models/YakkerLocation;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1

    .line 151
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v1, "title"

    const-string v2, "Location Services"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "message"

    const-string v2, "Location services must be enabled to postw and read local Yaks. Would you like to enable it now?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "okText"

    const-string v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v1, "cancelText"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/16 v1, 0x138a

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/activity/SendAYak;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/yik/yak/ui/activity/SendAYak;Z)Z
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    return p1
.end method

.method public static synthetic d(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 161
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->g:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "We are currently processing your link."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "We are currently processing your image."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/LinkIconView;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkIconView;->a()LFj;

    move-result-object v0

    sget-object v1, LFj;->a:LFj;

    if-ne v0, v1, :cond_4

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Invalid Link Input"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 177
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    const v0, 0x7f0800fd

    .line 189
    :goto_1
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 180
    :cond_3
    const v0, 0x7f0800fc

    .line 181
    const-string v2, "Sites"

    new-instance v3, LBX;

    invoke-direct {v3, p0}, LBX;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 194
    :cond_4
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/TextView;

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

    .line 199
    :cond_5
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "You have not entered a Yak yet"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    :cond_6
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

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

.method private e()V
    .locals 4

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->b()V

    .line 354
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LCb;

    invoke-direct {v1, p0}, LCb;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    return-void
.end method

.method public static synthetic e(Lcom/yik/yak/ui/activity/SendAYak;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/WebsiteWhiteListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 400
    return-void
.end method

.method public static synthetic f(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    return-void
.end method

.method public static synthetic g(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    invoke-static {v0}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    .line 495
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 500
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_hhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 501
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

    .line 502
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    new-instance v2, Ljava/io/File;

    invoke-static {}, LGB;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 507
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 511
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_4

    .line 512
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 515
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

.method public static synthetic h(Lcom/yik/yak/ui/activity/SendAYak;)LCi;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->l:LCi;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 536
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    const-string v1, "title"

    const-string v2, "Remove Image?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    const-string v1, "message"

    const-string v2, "Are you sure you want to remove this image?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "okText"

    const-string v2, "YES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v1, "cancelText"

    const-string v2, "NO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const/16 v1, 0x7d5

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 542
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/LinkIconView;

    sget-object v1, LFj;->b:LFj;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkIconView;->setIconState(LFj;)V

    .line 546
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    .line 547
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->m()V

    .line 548
    return-void
.end method

.method public static synthetic i(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->p()V

    return-void
.end method

.method public static synthetic j(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/LinkDetectingEditText;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/LinkIconView;

    sget-object v1, LFj;->a:LFj;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkIconView;->setIconState(LFj;)V

    .line 552
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    .line 553
    const-string v0, "This link is not valid."

    sget-object v1, Lwt;->c:Lwt;

    const-string v2, "View Sites"

    new-instance v3, LCe;

    invoke-direct {v3, p0}, LCe;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;Lwt;Ljava/lang/String;Lwy;)V

    .line 560
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->g:Z

    .line 565
    new-instance v0, Lcom/yik/yak/data/http/request/ValidateUrlRequest;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yik/yak/data/http/request/ValidateUrlRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, LCf;

    invoke-direct {v1, p0}, LCf;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, p0, v1}, Lcom/yik/yak/data/http/request/ValidateUrlRequest;->execute(Landroid/content/Context;LAe;)Landroid/os/Handler;

    .line 597
    return-void
.end method

.method public static synthetic k(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->j()V

    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->x:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 601
    return-void
.end method

.method public static synthetic l(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->i()V

    return-void
.end method

.method private m()V
    .locals 0

    .prologue
    .line 636
    invoke-static {}, Lww;->a()V

    .line 637
    return-void
.end method

.method public static synthetic m(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->d()V

    return-void
.end method

.method public static synthetic n(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->x:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 641
    return-void
.end method

.method public static synthetic o(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    .line 645
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 646
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->f:Z

    .line 650
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 651
    return-void
.end method

.method public static synthetic p(Lcom/yik/yak/ui/activity/SendAYak;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->e:Z

    return v0
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 799
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/ui/view/LinkDetectingEditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    .line 801
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->clearFocus()V

    .line 803
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/os/Bundle;)V

    .line 806
    :cond_0
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Z

    if-eqz v0, :cond_2

    .line 807
    invoke-static {}, LAB;->a()LAB;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, LAB;->c(Ljava/lang/String;)Lcom/yik/yak/data/models/PeekLocation;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_1

    .line 809
    iget-boolean v1, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitPhotos:Z

    invoke-direct {p0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Z)V

    .line 810
    iget-boolean v0, v0, Lcom/yik/yak/data/models/PeekLocation;->canSubmitLinks:Z

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->b(Z)V

    .line 822
    :goto_0
    return-void

    .line 812
    :cond_1
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->a(Z)V

    .line 813
    invoke-direct {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->b(Z)V

    goto :goto_0

    .line 815
    :cond_2
    iget-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    if-eqz v0, :cond_3

    .line 816
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "bcPhotosEnabled"

    invoke-virtual {v0, v1, v2}, LAw;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Z)V

    .line 817
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "bcLinksEnabled"

    invoke-virtual {v0, v1, v2}, LAw;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->b(Z)V

    goto :goto_0

    .line 819
    :cond_3
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "photosEnabled"

    invoke-virtual {v0, v1, v2}, LAw;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Z)V

    .line 820
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "linksEnabled"

    invoke-virtual {v0, v1, v2}, LAw;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->b(Z)V

    goto :goto_0
.end method

.method public static synthetic q(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->h()V

    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/LinkIconView;

    new-instance v1, LBS;

    invoke-direct {v1, p0}, LBS;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 866
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "linksEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LAw;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    new-instance v1, LBT;

    invoke-direct {v1, p0}, LBT;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setOnLinkAddedOrEditedListener(LFh;)V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    new-instance v1, LBU;

    invoke-direct {v1, p0}, LBU;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 906
    return-void
.end method

.method public static synthetic r(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->e()V

    return-void
.end method

.method public static synthetic s(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 909
    new-instance v0, Lcom/yik/yak/data/http/request/GetWhiteListOfSitesRequest;

    invoke-direct {v0}, Lcom/yik/yak/data/http/request/GetWhiteListOfSitesRequest;-><init>()V

    new-instance v1, LBV;

    invoke-direct {v1, p0}, LBV;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, p0, v1}, Lcom/yik/yak/data/http/request/GetWhiteListOfSitesRequest;->execute(Landroid/content/Context;LAe;)Landroid/os/Handler;

    .line 922
    return-void
.end method

.method public static synthetic t(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->m:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic u(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->m()V

    return-void
.end method

.method public static synthetic v(Lcom/yik/yak/ui/activity/SendAYak;)Lcom/yik/yak/ui/view/LinkIconView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->v:Lcom/yik/yak/ui/view/LinkIconView;

    return-object v0
.end method

.method public static synthetic w(Lcom/yik/yak/ui/activity/SendAYak;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1115
    if-nez p1, :cond_0

    .line 1130
    :goto_0
    return-object v3

    .line 1121
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

    .line 1122
    invoke-virtual/range {v0 .. v5}, Lcom/yik/yak/ui/activity/SendAYak;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1123
    if-eqz v0, :cond_1

    .line 1124
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1126
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1127
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1130
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 941
    if-nez p2, :cond_2

    .line 942
    const/16 v0, 0x7d4

    if-ne p1, v0, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/EditText;)V

    .line 1027
    :cond_1
    :goto_0
    return-void

    .line 949
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 951
    :sswitch_0
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/EditText;)V

    .line 952
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const-string v1, "url"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 955
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/yik/yak/ui/activity/SendAYak;->a(I)V

    goto :goto_0

    .line 958
    :sswitch_2
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/EditText;)V

    .line 959
    if-ne p2, v2, :cond_1

    .line 960
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    .line 961
    iput-object v3, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/String;

    .line 962
    iput-object v3, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    .line 963
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->l()V

    goto :goto_0

    .line 967
    :sswitch_3
    if-ne p2, v2, :cond_3

    .line 968
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 971
    :cond_3
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->setResult(I)V

    .line 972
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->finish()V

    goto :goto_0

    .line 976
    :sswitch_4
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->c()V

    goto :goto_0

    .line 979
    :sswitch_5
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 981
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {v0}, LzQ;->b(I)V

    .line 982
    iput-boolean v2, p0, Lcom/yik/yak/ui/activity/SendAYak;->d:Z

    .line 983
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 992
    :sswitch_6
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 993
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->l()V

    .line 994
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->o()V

    .line 996
    if-eqz p3, :cond_5

    .line 998
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    .line 999
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;

    invoke-static {v0, v1}, LGB;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1001
    if-nez v1, :cond_4

    .line 1002
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

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

    .line 1009
    :catch_0
    move-exception v0

    .line 1014
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LBW;

    invoke-direct {v1, p0}, LBW;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1005
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1012
    :cond_5
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    goto :goto_1

    .line 1023
    :cond_6
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Landroid/widget/EditText;)V

    .line 1024
    iput-object v3, p0, Lcom/yik/yak/ui/activity/SendAYak;->o:Ljava/lang/String;

    .line 1025
    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->h:Z

    goto/16 :goto_0

    .line 949
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x7d4 -> :sswitch_6
        0x7d5 -> :sswitch_2
        0x1388 -> :sswitch_4
        0x138a -> :sswitch_3
        0x1b5c -> :sswitch_5
        0x1b5f -> :sswitch_1
    .end sparse-switch

    .line 979
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    const-class v2, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    const-string v1, "title"

    const v2, 0x7f08012c

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v1, "message"

    const v2, 0x7f08012b

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v1, "okText"

    const v2, 0x7f08017a

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const-string v1, "cancelText"

    const v2, 0x7f080116

    invoke-virtual {p0, v2}, Lcom/yik/yak/ui/activity/SendAYak;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const/16 v1, 0x1b5f

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 937
    :goto_0
    return-void

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->g()V

    .line 935
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 659
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 660
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->setContentView(I)V

    .line 662
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    invoke-virtual {v0, v1}, LGs;->f(Z)V

    .line 664
    const-string v0, "Send a Yak"

    .line 666
    iput-object p0, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    .line 667
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    invoke-static {v1}, LAq;->a(Landroid/content/Context;)LAq;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->q:LAq;

    .line 669
    if-nez p1, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    .line 675
    :goto_0
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 676
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    const-string v2, "peekID"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->j:Ljava/lang/String;

    .line 680
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    const-string v2, "isPeek"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->c:Z

    .line 681
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    const-string v2, "isBasecamp"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->i:Z

    .line 683
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    const-string v2, "canSubmit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    const-string v2, "canSubmit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 684
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->k:Landroid/content/Context;

    const-string v1, "Cannot post Yak to this Peek."

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 685
    const/16 v0, 0x7d3

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->setResult(I)V

    .line 686
    invoke-virtual {p0}, Lcom/yik/yak/ui/activity/SendAYak;->finish()V

    .line 759
    :goto_1
    return-void

    .line 672
    :cond_1
    iput-object p1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    goto :goto_0

    .line 690
    :cond_2
    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 691
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 694
    :goto_2
    const-string v0, "Home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 695
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 696
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    :cond_3
    const-string v0, "Post a Yak"

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->a(Ljava/lang/String;)V

    .line 701
    const v0, 0x7f0d01b2

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LCg;

    invoke-direct {v1, p0}, LCg;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->w:Landroid/widget/ProgressBar;

    .line 710
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    .line 711
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    invoke-static {}, LzQ;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    new-instance v1, LCh;

    invoke-direct {v1, p0}, LCh;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 724
    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/ImageView;

    .line 725
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->s:Landroid/widget/ImageView;

    new-instance v1, LBP;

    invoke-direct {v1, p0}, LBP;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 743
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/TextView;

    .line 744
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 745
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->y:Landroid/widget/TextView;

    const-string v1, "200"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/activity/SendAYak;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->x:Landroid/widget/RelativeLayout;

    .line 748
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->x:Landroid/widget/RelativeLayout;

    new-instance v1, LBQ;

    invoke-direct {v1, p0}, LBQ;-><init>(Lcom/yik/yak/ui/activity/SendAYak;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->c()V

    .line 756
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->q()V

    .line 757
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->r()V

    .line 758
    invoke-direct {p0}, Lcom/yik/yak/ui/activity/SendAYak;->s()V

    goto/16 :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 763
    invoke-super {p0, p1}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 764
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const-string v1, "STATE_KEY_YAK"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    const-string v1, "STATE_KEY_HANDLE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 766
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 776
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onResume()V

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->z:J

    .line 779
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "linksEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LAw;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v0}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 782
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->setLinkTextColor(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/yik/yak/ui/activity/SendAYak;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 792
    const-string v0, "STATE_KEY_YAK"

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->u:Lcom/yik/yak/ui/view/LinkDetectingEditText;

    invoke-virtual {v1}, Lcom/yik/yak/ui/view/LinkDetectingEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v0, "STATE_KEY_HANDLE"

    iget-object v1, p0, Lcom/yik/yak/ui/activity/SendAYak;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 770
    invoke-super {p0}, Lcom/yik/yak/ui/activity/BaseAppCompatActivity;->onStart()V

    .line 771
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const-string v1, "SendScreen"

    invoke-virtual {v0, v1}, LGs;->a(Ljava/lang/String;)V

    .line 772
    return-void
.end method
