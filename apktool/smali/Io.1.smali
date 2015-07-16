.class LIo;
.super LId;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:LIn;


# direct methods
.method constructor <init>(LIn;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, LIo;->b:LIn;

    iput-object p2, p0, LIo;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, LId;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, LIo;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    return-void
.end method
