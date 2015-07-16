.class public Lcom/yik/yak/ui/fragment/MeFragment;
.super Lcom/yik/yak/ui/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements LAi;
.implements LBo;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yik/yak/data/models/SimpleListItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/yik/yak/data/models/Notification;

.field private g:LCX;

.field private h:LEZ;

.field private i:Z

.field private j:Landroid/widget/ImageView;

.field private k:F

.field private l:Landroid/view/animation/Animation;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->c:Ljava/util/List;

    .line 65
    sget-object v0, LEZ;->c:LEZ;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->i:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->j:Landroid/widget/ImageView;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->k:F

    .line 74
    new-instance v0, LET;

    invoke-direct {v0, p0}, LET;-><init>(Lcom/yik/yak/ui/fragment/MeFragment;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->n:Landroid/view/View$OnClickListener;

    .line 475
    return-void
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/MeFragment;LCX;)LCX;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/MeFragment;->g:LCX;

    return-object p1
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/MeFragment;)Lcom/yik/yak/data/models/Notification;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->f:Lcom/yik/yak/data/models/Notification;

    return-object v0
.end method

.method public static synthetic a(Lcom/yik/yak/ui/fragment/MeFragment;Lcom/yik/yak/data/models/Notification;)Lcom/yik/yak/data/models/Notification;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yik/yak/ui/fragment/MeFragment;->f:Lcom/yik/yak/data/models/Notification;

    return-object p1
.end method

.method private a(Lcom/yik/yak/data/models/SimpleListItem;)V
    .locals 3

    .prologue
    .line 338
    const/4 v1, 0x1

    .line 341
    :try_start_0
    iget-object v0, p1, Lcom/yik/yak/data/models/SimpleListItem;->index:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 346
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 382
    :goto_1
    :sswitch_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 348
    :sswitch_1
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->r()V

    .line 349
    new-instance v0, Lcom/yik/yak/ui/fragment/MyYaksFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/MyYaksFragment;-><init>()V

    .line 350
    const-string v1, "MyRecentScreen"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/MyYaksFragment;->a(Ljava/lang/String;)V

    .line 351
    sget-object v1, LDX;->a:LDX;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/MyYaksFragment;->a(LDX;)V

    .line 352
    sget-object v1, LCU;->c:LCU;

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 355
    :sswitch_2
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    invoke-virtual {v0}, LHa;->s()V

    .line 356
    new-instance v0, Lcom/yik/yak/ui/fragment/MyRepliesFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;-><init>()V

    .line 357
    const-string v1, "MyRecentRepliesScreen"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->a(Ljava/lang/String;)V

    .line 358
    sget-object v1, LDX;->a:LDX;

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/MyRepliesFragment;->a(LDX;)V

    .line 359
    sget-object v1, LCU;->c:LCU;

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 362
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yik/yak/ui/activity/SelectBasecampActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    const-string v1, "Source"

    const-string v2, "Me"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 370
    :sswitch_4
    new-instance v0, Lcom/yik/yak/ui/fragment/SettingsFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/SettingsFragment;-><init>()V

    .line 371
    sget-object v1, LCU;->c:LCU;

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 374
    :sswitch_5
    new-instance v0, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;-><init>()V

    .line 375
    const-string v1, "ManageMyPeeksScreen"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/ManagePeeksFragment;->a(Ljava/lang/String;)V

    .line 376
    sget-object v1, LCU;->c:LCU;

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 379
    :sswitch_6
    new-instance v0, Lcom/yik/yak/ui/fragment/DraftsFragment;

    invoke-direct {v0}, Lcom/yik/yak/ui/fragment/DraftsFragment;-><init>()V

    .line 380
    const-string v1, "DraftsFragment"

    invoke-virtual {v0, v1}, Lcom/yik/yak/ui/fragment/DraftsFragment;->a(Ljava/lang/String;)V

    .line 381
    sget-object v1, LCU;->c:LCU;

    invoke-virtual {p0, v1, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LCU;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 346
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

.method public static synthetic a(Lcom/yik/yak/ui/fragment/MeFragment;Lcom/yik/yak/data/models/SimpleListItem;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Lcom/yik/yak/data/models/SimpleListItem;)V

    return-void
.end method

.method public static synthetic b(Lcom/yik/yak/ui/fragment/MeFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Lcom/yik/yak/ui/fragment/MeFragment;)LCX;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->g:LCX;

    return-object v0
.end method

.method public static synthetic d(Lcom/yik/yak/ui/fragment/MeFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->e:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    const-string v0, "Me"

    return-object v0
.end method

.method public a(LAA;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAA;",
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

    .line 256
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    invoke-virtual {v1}, LAJ;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, LAA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, LHi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "There are no notifications to update"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    :goto_0
    return-void

    .line 266
    :cond_1
    const/4 v1, 0x0

    .line 269
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

    invoke-static {}, LAa;->g()Ljava/lang/String;

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

    .line 274
    :goto_1
    if-eqz v3, :cond_4

    .line 275
    sget-object v0, LEY;->a:[I

    invoke-virtual {p1}, LAA;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 278
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

    .line 280
    :try_start_1
    const-string v6, "notificationIDs"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 281
    invoke-virtual {v0}, Lcom/yik/yak/data/models/Notification;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 282
    invoke-virtual {v0, p3}, Lcom/yik/yak/data/models/Notification;->setStatus(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 283
    const/4 v1, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    .line 289
    goto :goto_2

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v1

    goto :goto_1

    .line 284
    :catch_1
    move-exception v0

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    .line 288
    goto :goto_3

    .line 286
    :catch_2
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v0, v1

    goto :goto_3

    .line 291
    :cond_2
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0, v2}, LAg;->a(I)V

    .line 292
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    sget-object v5, LCU;->c:LCU;

    invoke-static {}, LAg;->a()LAg;

    move-result-object v6

    invoke-virtual {v6}, LAg;->d()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/yik/yak/ui/activity/MainActivity;->a(LCU;I)V

    .line 299
    :goto_4
    if-nez v1, :cond_3

    .line 300
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "There are no notifications to update"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 304
    :cond_3
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lxx;->a(Ljava/lang/String;)Lxx;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LxG;->a(Lxx;Ljava/lang/String;)LxG;

    move-result-object v0

    .line 306
    new-instance v1, LxF;

    invoke-direct {v1}, LxF;-><init>()V

    invoke-virtual {v1, v0}, LxF;->a(LxG;)LxF;

    move-result-object v0

    invoke-virtual {v0, v4}, LxF;->a(Ljava/lang/String;)LxF;

    move-result-object v0

    invoke-virtual {v0}, LxF;->b()LxD;

    move-result-object v0

    .line 311
    invoke-static {v2}, LAj;->a(Z)Lxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxy;->a(LxD;)LwY;

    move-result-object v0

    .line 312
    new-instance v1, LEW;

    invoke-direct {v1, p0}, LEW;-><init>(Lcom/yik/yak/ui/fragment/MeFragment;)V

    invoke-virtual {v0, v1}, LwY;->a(Lxc;)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_4

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(LEZ;Z)V
    .locals 6

    .prologue
    const v5, 0x7f0d0136

    const v4, 0x7f0d0134

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 395
    sget-object v0, LEZ;->a:LEZ;

    if-ne p1, v0, :cond_3

    .line 396
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->j()V

    .line 397
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->i:Z

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/MeFragment;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 399
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/MeFragment;->i:Z

    .line 402
    :cond_1
    sget-object v0, LEZ;->a:LEZ;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    .line 403
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->d()V

    .line 407
    if-eqz p2, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->c()V

    .line 421
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yik/yak/ui/activity/MainActivity;->d()LBm;

    move-result-object v0

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    iput-object v1, v0, LBm;->b:LEZ;

    .line 422
    return-void

    .line 411
    :cond_3
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    if-ne v0, p1, :cond_4

    iget-boolean v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->i:Z

    if-eqz v0, :cond_5

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/MeFragment;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 413
    iput-boolean v2, p0, Lcom/yik/yak/ui/fragment/MeFragment;->i:Z

    .line 416
    :cond_5
    sget-object v0, LEZ;->b:LEZ;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    .line 417
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 418
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const-string v1, "action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_0

    .line 471
    sget-object v0, LEZ;->a:LEZ;

    invoke-virtual {p0, v0, v2}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LEZ;Z)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f0d0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->e:Landroid/widget/ListView;

    .line 160
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->e:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 161
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->e:Landroid/widget/ListView;

    new-instance v1, LEU;

    invoke-direct {v1, p0}, LEU;-><init>(Lcom/yik/yak/ui/fragment/MeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 134
    iput-boolean p2, p0, Lcom/yik/yak/ui/fragment/MeFragment;->i:Z

    .line 135
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, v0, v1

    .line 136
    const/high16 v0, 0x40400000    # 3.0f

    mul-float v2, v0, v1

    .line 137
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v3, v0, v1

    .line 139
    const v0, 0x7f0d0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->j:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 141
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->j:Landroid/widget/ImageView;

    iget v2, p0, Lcom/yik/yak/ui/fragment/MeFragment;->k:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLeft(I)V

    .line 143
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->l:Landroid/view/animation/Animation;

    .line 144
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->l:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 146
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->l:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 148
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v3, v1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->m:Landroid/view/animation/Animation;

    .line 149
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->m:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 153
    if-eqz p2, :cond_0

    .line 154
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LEZ;Z)V

    .line 156
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 454
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
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

    .line 436
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/yik/yak/data/models/Notification;->emptyNotification()Lcom/yik/yak/data/models/Notification;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_0
    new-instance v0, LCX;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030068

    invoke-direct {v0, v1, v2, p1}, LCX;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->g:LCX;

    .line 441
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yik/yak/ui/fragment/MeFragment;->g:LCX;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 443
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    sget-object v1, LEZ;->c:LEZ;

    if-ne v0, v1, :cond_1

    .line 444
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 445
    sget-object v0, LEZ;->b:LEZ;

    invoke-virtual {p0, v0, v3}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LEZ;Z)V

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 447
    :cond_2
    sget-object v0, LEZ;->a:LEZ;

    invoke-virtual {p0, v0, v3}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LEZ;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    sget-object v1, LEZ;->a:LEZ;

    if-ne v0, v1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->d()V

    .line 462
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 204
    const v0, 0x7f0d0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->d:Landroid/widget/ListView;

    .line 205
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->d:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 207
    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->d:Landroid/widget/ListView;

    new-instance v1, LEV;

    invoke-direct {v1, p0}, LEV;-><init>(Lcom/yik/yak/ui/fragment/MeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    new-instance v0, Lcom/yik/yak/data/models/SimpleListItem;

    invoke-direct {v0}, Lcom/yik/yak/data/models/SimpleListItem;-><init>()V

    .line 221
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, LAB;->a:LAB;

    invoke-virtual {v0, v1, v2}, Lcom/yik/yak/data/models/SimpleListItem;->getItemList(Landroid/content/Context;LAB;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->c:Ljava/util/List;

    .line 223
    new-instance v0, LCV;

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030066

    iget-object v3, p0, Lcom/yik/yak/ui/fragment/MeFragment;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, LCV;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 224
    iget-object v1, p0, Lcom/yik/yak/ui/fragment/MeFragment;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0}, LAg;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, LAg;->a()LAg;

    move-result-object v1

    invoke-virtual {v1}, LAg;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Ljava/util/ArrayList;I)V

    .line 229
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, LAg;->a(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 233
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0}, LAg;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0}, LAg;->d()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yik/yak/ui/fragment/MeFragment;->h:LEZ;

    sget-object v1, LEZ;->a:LEZ;

    if-eq v0, v1, :cond_2

    .line 239
    sget-object v0, LEZ;->a:LEZ;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LEZ;Z)V

    .line 242
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0}, LAg;->c()Ljava/util/ArrayList;

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

    .line 245
    invoke-virtual {v0}, Lcom/yik/yak/data/models/Notification;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "new"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 251
    sget-object v0, LAA;->i:LAA;

    const-string v2, "unread"

    invoke-virtual {p0, v0, v1, v2}, Lcom/yik/yak/ui/fragment/MeFragment;->a(LAA;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/yik/yak/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->h()Lcom/yik/yak/ui/activity/MainActivity;

    .line 112
    invoke-virtual {p0}, Lcom/yik/yak/ui/fragment/MeFragment;->c()V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    const v0, 0x7f03004c

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 93
    const v0, 0x7f0d0131

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iget-object v2, p0, Lcom/yik/yak/ui/fragment/MeFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0d0132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/yik/yak/ui/fragment/MeFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0, v1, v3}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Landroid/view/View;Z)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/MeFragment;->b(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/yik/yak/ui/fragment/MeFragment;->a(Landroid/view/View;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yik/yak/ui/fragment/MeFragment;->setHasOptionsMenu(Z)V

    .line 103
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onPause()V

    .line 128
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0, p0}, LAg;->b(LAi;)Z

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/yik/yak/ui/fragment/BaseFragment;->onResume()V

    .line 122
    invoke-static {}, LAg;->a()LAg;

    move-result-object v0

    invoke-virtual {v0, p0}, LAg;->a(LAi;)Z

    .line 123
    return-void
.end method
