.class LaD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laz;


# direct methods
.method constructor <init>(Laz;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, LaD;->a:Laz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, LaD;->a:Laz;

    iget-object v1, p0, LaD;->a:Laz;

    sget-object v2, Lad;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Laz;->a(Laz;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Laz;->a([Ljava/io/File;)V

    .line 719
    return-void
.end method
