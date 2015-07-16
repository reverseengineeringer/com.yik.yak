.class LJl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LJi;


# direct methods
.method constructor <init>(LJi;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, LJl;->a:LJi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, LJl;->a:LJi;

    iget-object v0, v0, LJi;->c:LJq;

    invoke-interface {v0}, LJq;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    iget-object v1, p0, LJl;->a:LJi;

    iget-object v1, v1, LJi;->a:Landroid/content/Context;

    const-string v2, "Failed to send events files."

    invoke-static {v1, v2, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
