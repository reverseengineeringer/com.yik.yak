.class LJm;
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
    .line 75
    iput-object p1, p0, LJm;->a:LJi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, LJm;->a:LJi;

    iget-object v0, v0, LJi;->c:LJq;

    .line 80
    iget-object v1, p0, LJm;->a:LJi;

    iget-object v2, p0, LJm;->a:LJi;

    invoke-virtual {v2}, LJi;->a()LJq;

    move-result-object v2

    iput-object v2, v1, LJi;->c:LJq;

    .line 81
    invoke-interface {v0}, LJq;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    iget-object v1, p0, LJm;->a:LJi;

    iget-object v1, v1, LJi;->a:Landroid/content/Context;

    const-string v2, "Failed to disable events."

    invoke-static {v1, v2, v0}, LIe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
