.class Las;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lah;

.field private b:Z

.field private final c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Lah;)V
    .locals 2

    .prologue
    .line 1116
    iput-object p1, p0, Las;->a:Lah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Las;->b:Z

    .line 1118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Las;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lah;Lai;)V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0, p1}, Las;-><init>(Lah;)V

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    .prologue
    .line 1121
    iput-boolean p1, p0, Las;->b:Z

    .line 1122
    iget-object v0, p0, Las;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1123
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 1126
    iget-boolean v0, p0, Las;->b:Z

    return v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1131
    :try_start_0
    iget-object v0, p0, Las;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
