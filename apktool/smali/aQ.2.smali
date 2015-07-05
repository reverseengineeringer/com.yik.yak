.class LaQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:LaD;


# direct methods
.method constructor <init>(LaD;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, LaQ;->c:LaD;

    iput-wide p2, p0, LaQ;->a:J

    iput-object p4, p0, LaQ;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, LaQ;->c:LaD;

    invoke-static {v0}, LaD;->a(LaD;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, LaQ;->c:LaD;

    invoke-static {v0}, LaD;->b(LaD;)LaZ;

    move-result-object v0

    iget-wide v2, p0, LaQ;->a:J

    iget-object v1, p0, LaQ;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, LaZ;->a(JLjava/lang/String;)V

    .line 351
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, LaQ;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
