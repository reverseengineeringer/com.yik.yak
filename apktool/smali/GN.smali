.class public LGN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Application;

.field private b:LGO;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, LGN;->a:Landroid/app/Application;

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, LGO;

    iget-object v1, p0, LGN;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, LGO;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, LGN;->b:LGO;

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public a(LGQ;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LGN;->b:LGO;

    if-eqz v0, :cond_0

    iget-object v0, p0, LGN;->b:LGO;

    invoke-static {v0, p1}, LGO;->a(LGO;LGQ;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
