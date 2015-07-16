.class public LAg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LAg;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LAi;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAg;->b:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAg;->c:Ljava/util/ArrayList;

    .line 22
    iput-boolean v1, p0, LAg;->d:Z

    .line 24
    iput v1, p0, LAg;->e:I

    .line 115
    return-void
.end method

.method static synthetic a(LAg;I)I
    .locals 0

    .prologue
    .line 13
    iput p1, p0, LAg;->e:I

    return p1
.end method

.method public static declared-synchronized a()LAg;
    .locals 2

    .prologue
    .line 31
    const-class v1, LAg;

    monitor-enter v1

    :try_start_0
    sget-object v0, LAg;->a:LAg;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, LAg;

    invoke-direct {v0}, LAg;-><init>()V

    sput-object v0, LAg;->a:LAg;

    .line 35
    :cond_0
    sget-object v0, LAg;->a:LAg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LAg;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, LAg;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(LAg;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, LAg;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(LAg;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, LAg;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, LAg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAi;

    .line 95
    invoke-interface {v0, p1}, LAi;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic a(LAg;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, LAg;->d:Z

    return p1
.end method

.method static synthetic b(LAg;)I
    .locals 2

    .prologue
    .line 13
    iget v0, p0, LAg;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LAg;->e:I

    return v0
.end method

.method static synthetic c(LAg;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, LAg;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, LAg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAi;

    .line 89
    iget-object v2, p0, LAg;->c:Ljava/util/ArrayList;

    iget v3, p0, LAg;->e:I

    invoke-interface {v0, v2, v3}, LAi;->a(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, LAg;->e:I

    .line 109
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, LAg;->d:Z

    .line 63
    new-instance v0, Lcom/yik/yak/data/http/request/DownloadNotifications;

    sget-object v1, LAA;->c:LAA;

    invoke-direct {v0, v1}, Lcom/yik/yak/data/http/request/DownloadNotifications;-><init>(LAA;)V

    new-instance v1, LAh;

    invoke-direct {v1, p0}, LAh;-><init>(LAg;)V

    invoke-virtual {v0, p1, v1}, Lcom/yik/yak/data/http/request/DownloadNotifications;->execute(Landroid/content/Context;LAp;)Landroid/os/Handler;

    .line 85
    return-void
.end method

.method public a(LAi;)Z
    .locals 1

    .prologue
    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p0, LAg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, LAg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, LAg;->d:Z

    return v0
.end method

.method public b(LAi;)Z
    .locals 1

    .prologue
    .line 52
    if-eqz p1, :cond_0

    iget-object v0, p0, LAg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, LAg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yik/yak/data/models/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, LAg;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, LAg;->e:I

    return v0
.end method
