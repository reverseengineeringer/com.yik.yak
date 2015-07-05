.class LtY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LtX;


# direct methods
.method constructor <init>(LtX;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, LtY;->a:LtX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, LtY;->a:LtX;

    invoke-static {v0}, LtX;->a(LtX;)V

    .line 88
    return-void
.end method
