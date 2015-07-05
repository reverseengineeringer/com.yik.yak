.class final Lsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lsh;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lsh;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lsf;->a:Landroid/app/Activity;

    iput-object p2, p0, Lsf;->b:Lsh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lsg;

    iget-object v1, p0, Lsf;->a:Landroid/app/Activity;

    iget-object v2, p0, Lsf;->b:Lsh;

    invoke-direct {v0, v1, v2}, Lsg;-><init>(Landroid/app/Activity;Lsh;)V

    .line 20
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lsg;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    return-void
.end method
