.class public LAE;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LAE;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()LAE;
    .locals 1

    .prologue
    .line 42
    sget-object v0, LAE;->a:LAE;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, LAE;

    invoke-direct {v0}, LAE;-><init>()V

    sput-object v0, LAE;->a:LAE;

    .line 46
    :cond_0
    sget-object v0, LAE;->a:LAE;

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 70
    invoke-static {}, LzQ;->g()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-static {v0}, LzQ;->c(Z)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/activity/YikYakDialog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v1, "title"

    const v2, 0x7f08012f

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "message"

    const v2, 0x7f08012e

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "okText"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "maybeText"

    const-string v2, "LATER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, LzQ;->h()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 50
    invoke-static {}, LzQ;->j()Ljava/util/Date;

    move-result-object v0

    .line 51
    invoke-direct {p0}, LAE;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    invoke-static {}, LAw;->a()LAw;

    move-result-object v0

    const-string v1, "yakarma"

    const-string v2, "rate_prompt"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, LAw;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 57
    invoke-direct {p0, v0}, LAE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, LGs;->a()LGs;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, LGs;->b(I)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 63
    invoke-direct {p0, p1}, LAE;->b(Landroid/app/Activity;)V

    .line 67
    :cond_1
    return-void
.end method
