.class LaH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaD;


# direct methods
.method constructor <init>(LaD;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, LaH;->a:LaD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, LaH;->a:LaD;

    iget-object v1, p0, LaH;->a:LaD;

    sget-object v2, Lah;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, LaD;->a(LaD;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, LaD;->a([Ljava/io/File;)V

    .line 719
    return-void
.end method
