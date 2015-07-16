.class public LAR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LAR;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static a()LAR;
    .locals 1

    .prologue
    .line 42
    sget-object v0, LAR;->a:LAR;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, LAR;

    invoke-direct {v0}, LAR;-><init>()V

    sput-object v0, LAR;->a:LAR;

    .line 46
    :cond_0
    sget-object v0, LAR;->a:LAR;

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, LAa;->k()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, LAa;->g(Z)V

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yik/yak/ui/dialog/YikYakDialog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    const-string v1, "title"

    const v2, 0x7f080156

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "message"

    const v2, 0x7f080155

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "okText"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "maybeText"

    const-string v2, "LATER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 87
    invoke-static {}, LAa;->l()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-static {}, LAa;->o()Ljava/util/Date;

    move-result-object v0

    .line 52
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v1

    const-string v2, "rating"

    const-string v3, "shouldPromptForRating"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 55
    invoke-static {}, LAa;->m()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 57
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, LAR;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_0
    invoke-static {}, LAJ;->a()LAJ;

    move-result-object v0

    const-string v1, "yakarma"

    const-string v3, "rate_prompt"

    const/16 v4, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, LAJ;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 64
    invoke-direct {p0, v0}, LAR;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    :cond_1
    invoke-static {}, LHa;->a()LHa;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, LHa;->b(I)V

    .line 66
    invoke-static {v5}, LAa;->h(Z)V

    .line 67
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

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 71
    invoke-direct {p0, p1}, LAR;->b(Landroid/app/Activity;)V

    .line 76
    :cond_2
    return-void
.end method
