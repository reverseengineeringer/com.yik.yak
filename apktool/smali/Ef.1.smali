.class public LEf;
.super LDf;
.source "SourceFile"

# interfaces
.implements LBe;
.implements LzX;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/SimpleListItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/yik/yak/data/models/Notification;

.field private f:LCK;

.field private g:LEm;

.field private h:Z

.field private i:Landroid/widget/ImageView;

.field private j:F

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;

.field private m:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, LDf;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LEf;->b:Ljava/util/List;

    .line 65
    sget-object v0, LEm;->c:LEm;

    iput-object v0, p0, LEf;->g:LEm;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, LEf;->h:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, LEf;->i:Landroid/widget/ImageView;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, LEf;->j:F

    .line 74
    new-instance v0, LEg;

    invoke-direct {v0, p0}, LEg;-><init>(LEf;)V

    iput-object v0, p0, LEf;->m:Landroid/view/View$OnClickListener;

    .line 461
    return-void
.end method

.method static synthetic a(LEf;LCK;)LCK;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LEf;->f:LCK;

    return-object p1
.end method

.method static synthetic a(LEf;)Lcom/yik/yak/data/models/Notification;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LEf;->e:Lcom/yik/yak/data/models/Notification;

    return-object v0
.end method

.method static synthetic a(LEf;Lcom/yik/yak/data/models/Notification;)Lcom/yik/yak/data/models/Notification;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LEf;->e:Lcom/yik/yak/data/models/Notification;

    return-object p1
.end method

.method static synthetic a(LEf;Lcom/yik/yak/data/models/SimpleListItem;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, LEf;->a(Lcom/yik/yak/data/models/SimpleListItem;)V

    return-void
.end method

.method private a(Lcom/yik/yak/data/models/SimpleListItem;)V
    .locals 3

    .prologue
    .line 337
    const/4 v1, 0x1

    .line 340
    :try_start_0
    iget-object v0, p1, Lcom/yik/yak/data/models/SimpleListItem;->index:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 345
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 380
    :goto_1
    :sswitch_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 347
    :sswitch_1
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->n()V

    .line 348
    new-instance v0, LEs;

    invoke-direct {v0}, LEs;-><init>()V

    .line 349
    const-string v1, "MyRecentScreen"

    invoke-virtual {v0, v1}, LEs;->a(Ljava/lang/String;)V

    .line 350
    sget-object v1, LDt;->a:LDt;

    invoke-virtual {v0, v1}, LEs;->a(LDt;)V

    .line 351
    sget-object v1, LCH;->c:LCH;

    invoke-virtual {p0, v1, v0}, LEf;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 354
    :sswitch_2
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    invoke-virtual {v0}, LGs;->o()V

    .line 355
    new-instance v0, LEp;

    invoke-direct {v0}, LEp;-><init>()V

    .line 356
    const-string v1, "MyRecentRepliesScreen"

    invoke-virtual {v0, v1}, LEp;->a(Ljava/lang/String;)V

    .line 357
    sget-object v1, LDt;->a:LDt;

    invoke-virtual {v0, v1}, LEp;->a(LDt;)V

    .line 358
    sget-object v1, LCH;->c:LCH;

    invoke-virtual {p0, v1, v0}, LEf;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 361
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    invoke-virtual {p0, v0}, LEf;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 368
    :sswitch_4
    new-instance v0, LEO;

    invoke-direct {v0}, LEO;-><init>()V

    .line 369
    sget-object v1, LCH;->c:LCH;

    invoke-virtual {p0, v1, v0}, LEf;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 372
    :sswitch_5
    new-instance v0, LEc;

    invoke-direct {v0}, LEc;-><init>()V

    .line 373
    const-string v1, "ManageMyPeeksScreen"

    invoke-virtual {v0, v1}, LEc;->a(Ljava/lang/String;)V

    .line 374
    sget-object v1, LCH;->c:LCH;

    invoke-virtual {p0, v1, v0}, LEf;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 377
    :sswitch_6
    new-instance v0, LDP;

    invoke-direct {v0}, LDP;-><init>()V

    .line 378
    const-string v1, "DraftsFragment"

    invoke-virtual {v0, v1}, LDP;->a(Ljava/lang/String;)V

    .line 379
    sget-object v1, LCH;->c:LCH;

    invoke-virtual {p0, v1, v0}, LEf;->a(LCH;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 345
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_6
        0xe -> :sswitch_5
        0xf -> :sswitch_0
        0x10 -> :sswitch_4
        0x15 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic b(LEf;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LEf;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(LEf;)LCK;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LEf;->f:LCK;

    return-object v0
.end method

.method static synthetic d(LEf;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LEf;->d:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    const-string v0, "Me"

    return-object v0
.end method

.method public a(LAn;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAn;",
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/Notification;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 255
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LAw;->a()LAw;

    move-result-object v1

    invoke-virtual {v1}, LAw;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, LAn;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 258
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, LGB;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p0}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "There are no notifications to update"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v1, 0x0

    .line 268
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"notificationIDs\":[],\"status\":\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\",\"userID\":\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, LzQ;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\"}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 273
    :goto_1
    if-eqz v3, :cond_4

    .line 274
    sget-object v0, LEl;->a:[I

    invoke-virtual {p1}, LAn;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 277
    :pswitch_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Notification;

    .line 279
    :try_start_1
    const-string v6, "notificationIDs"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 280
    invoke-virtual {v0}, Lcom/yik/yak/data/models/Notification;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 281
    invoke-virtual {v0, p3}, Lcom/yik/yak/data/models/Notification;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 282
    const/4 v1, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    .line 288
    goto :goto_2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v1

    goto :goto_1

    .line 283
    :catch_1
    move-exception v0

    .line 284
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    .line 287
    goto :goto_3

    .line 285
    :catch_2
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v1

    goto :goto_3

    .line 290
    :cond_2
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0, v2}, LzV;->a(I)V

    .line 291
    invoke-virtual {p0}, LEf;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    sget-object v5, LCH;->c:LCH;

    invoke-static {}, LzV;->a()LzV;

    move-result-object v6

    invoke-virtual {v6}, LzV;->d()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCH;I)V

    .line 298
    :goto_4
    if-nez v1, :cond_3

    .line 299
    invoke-virtual {p0}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "There are no notifications to update"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 303
    :cond_3
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lxn;->a(Ljava/lang/String;)Lxn;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lxw;->a(Lxn;Ljava/lang/String;)Lxw;

    move-result-object v0

    .line 305
    new-instance v1, Lxv;

    invoke-direct {v1}, Lxv;-><init>()V

    invoke-virtual {v1, v0}, Lxv;->a(Lxw;)Lxv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lxv;->a(Ljava/lang/String;)Lxv;

    move-result-object v0

    invoke-virtual {v0}, Lxv;->b()Lxt;

    move-result-object v0

    .line 310
    invoke-static {v2}, LzY;->a(Z)Lxo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxo;->a(Lxt;)LwP;

    move-result-object v0

    .line 311
    new-instance v1, LEj;

    invoke-direct {v1, p0}, LEj;-><init>(LEf;)V

    invoke-virtual {v0, v1}, LwP;->a(LwT;)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_4

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(LEm;Z)V
    .locals 6

    .prologue
    const v5, 0x7f0d0123

    const v4, 0x7f0d0121

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 393
    sget-object v0, LEm;->a:LEm;

    if-ne p1, v0, :cond_3

    .line 394
    iget-object v0, p0, LEf;->g:LEm;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, LEf;->h:Z

    if-eqz v0, :cond_1

    .line 395
    :cond_0
    iget-object v0, p0, LEf;->i:Landroid/widget/ImageView;

    iget-object v1, p0, LEf;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 396
    iput-boolean v2, p0, LEf;->h:Z

    .line 399
    :cond_1
    sget-object v0, LEm;->a:LEm;

    iput-object v0, p0, LEf;->g:LEm;

    .line 400
    invoke-virtual {p0}, LEf;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 401
    invoke-virtual {p0}, LEf;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 402
    invoke-virtual {p0}, LEf;->d()V

    .line 404
    if-eqz p2, :cond_2

    .line 405
    invoke-virtual {p0}, LEf;->c()V

    .line 418
    :cond_2
    :goto_0
    invoke-virtual {p0}, LEf;->f()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->d()LBc;

    move-result-object v0

    iget-object v1, p0, LEf;->g:LEm;

    iput-object v1, v0, LBc;->b:LEm;

    .line 419
    return-void

    .line 408
    :cond_3
    iget-object v0, p0, LEf;->g:LEm;

    if-ne v0, p1, :cond_4

    iget-boolean v0, p0, LEf;->h:Z

    if-eqz v0, :cond_5

    .line 409
    :cond_4
    iget-object v0, p0, LEf;->i:Landroid/widget/ImageView;

    iget-object v1, p0, LEf;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    iput-boolean v2, p0, LEf;->h:Z

    .line 413
    :cond_5
    sget-object v0, LEm;->b:LEm;

    iput-object v0, p0, LEf;->g:LEm;

    .line 414
    invoke-virtual {p0}, LEf;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 415
    invoke-virtual {p0}, LEf;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    const v0, 0x7f0d0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, LEf;->d:Landroid/widget/ListView;

    .line 159
    iget-object v0, p0, LEf;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 160
    iget-object v0, p0, LEf;->d:Landroid/widget/ListView;

    new-instance v1, LEh;

    invoke-direct {v1, p0}, LEh;-><init>(LEf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    iput-boolean p2, p0, LEf;->h:Z

    .line 134
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, v0, v1

    .line 135
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v2, v0, v1

    .line 136
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v3, v0, v1

    .line 138
    const v0, 0x7f0d0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LEf;->i:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, LEf;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    iget-object v0, p0, LEf;->i:Landroid/widget/ImageView;

    iget v2, p0, LEf;->j:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLeft(I)V

    .line 142
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, LEf;->k:Landroid/view/animation/Animation;

    .line 143
    iget-object v0, p0, LEf;->k:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    iget-object v0, p0, LEf;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 145
    iget-object v0, p0, LEf;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 147
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v3, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, LEf;->l:Landroid/view/animation/Animation;

    .line 148
    iget-object v0, p0, LEf;->l:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 149
    iget-object v0, p0, LEf;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    iget-object v0, p0, LEf;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 152
    if-eqz p2, :cond_0

    .line 153
    iget-object v0, p0, LEf;->g:LEm;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LEf;->a(LEm;Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 451
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    return-void
.end method

.method public a(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Notification;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 433
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Lcom/yik/yak/data/models/Notification;->emptyNotification()Lcom/yik/yak/data/models/Notification;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_0
    new-instance v0, LCK;

    invoke-virtual {p0}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030060

    invoke-direct {v0, v1, v2, p1}, LCK;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, LEf;->f:LCK;

    .line 438
    iget-object v0, p0, LEf;->d:Landroid/widget/ListView;

    iget-object v1, p0, LEf;->f:LCK;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 440
    iget-object v0, p0, LEf;->g:LEm;

    sget-object v1, LEm;->c:LEm;

    if-ne v0, v1, :cond_1

    .line 441
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 442
    sget-object v0, LEm;->b:LEm;

    invoke-virtual {p0, v0, v3}, LEf;->a(LEm;Z)V

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    sget-object v0, LEm;->a:LEm;

    invoke-virtual {p0, v0, v3}, LEf;->a(LEm;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, LEf;->g:LEm;

    sget-object v1, LEm;->a:LEm;

    if-ne v0, v1, :cond_0

    .line 457
    invoke-virtual {p0}, LEf;->d()V

    .line 459
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 203
    const v0, 0x7f0d0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, LEf;->c:Landroid/widget/ListView;

    .line 204
    iget-object v0, p0, LEf;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 206
    iget-object v0, p0, LEf;->c:Landroid/widget/ListView;

    new-instance v1, LEi;

    invoke-direct {v1, p0}, LEi;-><init>(LEf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    new-instance v0, Lcom/yik/yak/data/models/SimpleListItem;

    invoke-direct {v0}, Lcom/yik/yak/data/models/SimpleListItem;-><init>()V

    .line 220
    invoke-virtual {p0}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, LAo;->a:LAo;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/data/models/SimpleListItem;->getItemList(Landroid/content/Context;LAo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LEf;->b:Ljava/util/List;

    .line 222
    new-instance v0, LCI;

    invoke-virtual {p0}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03005e

    iget-object v3, p0, LEf;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, LCI;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 223
    iget-object v1, p0, LEf;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 224
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 227
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0}, LzV;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, LzV;->a()LzV;

    move-result-object v1

    invoke-virtual {v1}, LzV;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LEf;->a(Ljava/util/ArrayList;I)V

    .line 228
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {p0}, LEf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, LzV;->a(Landroid/content/Context;)V

    .line 229
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 232
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0}, LzV;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0}, LzV;->d()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LEf;->g:LEm;

    sget-object v1, LEm;->a:LEm;

    if-eq v0, v1, :cond_2

    .line 238
    sget-object v0, LEm;->a:LEm;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LEf;->a(LEm;Z)V

    .line 241
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0}, LzV;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/Notification;

    .line 244
    invoke-virtual {v0}, Lcom/yik/yak/data/models/Notification;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "new"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 249
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    sget-object v0, LAn;->i:LAn;

    const-string v2, "unread"

    invoke-virtual {p0, v0, v1, v2}, LEf;->a(LAn;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0, p1}, LDf;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, LEf;->f()Lcom/yik/yak/ui/activity/MainActivity;

    .line 112
    invoke-virtual {p0}, LEf;->c()V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    const v0, 0x7f030047

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 93
    const v0, 0x7f0d011e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, LEf;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0d011f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, LEf;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0, v1, v3}, LEf;->a(Landroid/view/View;Z)V

    .line 100
    invoke-virtual {p0, v1}, LEf;->b(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, v1}, LEf;->a(Landroid/view/View;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LEf;->setHasOptionsMenu(Z)V

    .line 103
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, LDf;->onPause()V

    .line 128
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0, p0}, LzV;->b(LzX;)Z

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, LDf;->onResume()V

    .line 122
    invoke-static {}, LzV;->a()LzV;

    move-result-object v0

    invoke-virtual {v0, p0}, LzV;->a(LzX;)Z

    .line 123
    return-void
.end method
