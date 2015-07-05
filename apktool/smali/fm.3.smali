.class Lfm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lfk;


# direct methods
.method constructor <init>(Lfk;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lfm;->a:Lfk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lfm;->a:Lfk;

    invoke-static {v0}, Lfk;->e(Lfk;)LfE;

    move-result-object v0

    invoke-interface {v0}, LfE;->c()V

    .line 253
    return-void
.end method
