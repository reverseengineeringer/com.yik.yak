.class public LCb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/SendAYak;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/SendAYak;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v1, "Select or take a new Picture"

    .line 365
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 366
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 373
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yik/yak/ui/activity/SendAYak;->a(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    new-instance v0, Ljava/io/File;

    invoke-static {}, LGB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    const/4 v1, 0x0

    .line 377
    iget-object v4, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-virtual {v4}, Lcom/yik/yak/ui/activity/SendAYak;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 379
    :try_start_0
    iget-object v4, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-static {v4}, Lcom/yik/yak/ui/activity/SendAYak;->d(Lcom/yik/yak/ui/activity/SendAYak;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 380
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/yik/yak/ui/activity/SendAYak;->b(Lcom/yik/yak/ui/activity/SendAYak;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    if-eqz v1, :cond_0

    .line 388
    const-string v0, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 389
    iget-object v0, p0, LCb;->a:Lcom/yik/yak/ui/activity/SendAYak;

    const/16 v1, 0x7d4

    invoke-virtual {v0, v3, v1}, Lcom/yik/yak/ui/activity/SendAYak;->startActivityForResult(Landroid/content/Intent;I)V

    .line 392
    :cond_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
