.class LHw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LHw;->a:Ljava/util/Set;

    .line 70
    iput-object p1, p0, LHw;->b:Landroid/app/Application;

    .line 71
    return-void
.end method

.method static synthetic a(LHw;LHy;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, LHw;->a(LHy;)Z

    move-result v0

    return v0
.end method

.method private a(LHy;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, LHw;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, LHx;

    invoke-direct {v0, p0, p1}, LHx;-><init>(LHw;LHy;)V

    .line 123
    iget-object v1, p0, LHw;->b:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 124
    iget-object v1, p0, LHw;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
